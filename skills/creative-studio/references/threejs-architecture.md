# Architecture Three.js

Vérifier la version installée (`three` dans package.json) et la doc correspondante avant d'écrire ; les API changent (`WebGPURenderer`, TSL, `Timer` vs `Clock`, `three/addons`).

## Structure
- Un module `createScene(canvas, opts)` retournant `{ start, stop, resize, dispose, setProgress }` ; indépendant du framework. Le composant (Vue/React) ne fait que monter/démonter.
- Un seul renderer/contexte par page ; partager si plusieurs vues (scissor ou canvas fixe + DOM tracking).
- Données (positions, courbes) séparées de la présentation ; les visuels dérivent des vraies données, jamais d'une physique inventée.

## Cycle de vie
- Import dynamique (`await import('three')`) ; Nuxt : `<ClientOnly>` + `onMounted`, jamais d'accès `window` au setup.
- `ResizeObserver` sur le conteneur ; `renderer.setPixelRatio(Math.min(devicePixelRatio, 2))` (1.5 mobile) ; `setSize(w,h,false)`.
- `IntersectionObserver` : pause hors écran. `visibilitychange` : pause onglet caché.
- Rendu à la demande si scène statique : `requestAnimationFrame` seulement pendant interaction/animation (`invalidate()`).
- `dispose()` : `geometry.dispose()`, `material.dispose()`, textures, render targets, `renderer.dispose()`, `forceContextLoss()` si démontage définitif, retirer listeners, annuler rAF, `gsap.killTweensOf`.
- Gérer `webglcontextlost/restored`.

## Chargement
- GLTF : `GLTFLoader` + `DRACOLoader` (ou Meshopt) + KTX2 (`KTX2Loader`) pour textures ; modèle < ~2 Mo cible, textures ≤ 2048 (1024 mobile).
- Afficher un poster (image/SVG) pendant le chargement ; échec → poster permanent.
- Convertir/optimiser : `gltf-transform` (dedup, prune, resize, draco/meshopt, ktx2) en étape de build, pas à la main.

## Rendu
- Réutiliser géométries/matériaux ; `InstancedMesh` à partir de ~dizaines de copies ; `BatchedMesh` pour hétérogène.
- Matériaux : `MeshStandardMaterial`/`Physical` seulement si PBR requis ; sinon `MeshBasic/Matcap` (très économique, style maîtrisé).
- Lumières : peu ; ombres baked ou `ContactShadows` plutôt que shadow maps multiples.
- Environnement : HDR compressé petit (`PMREMGenerator`) ou `RoomEnvironment`.
- Postprocessing : minimum (1-3 passes), résolution réduite pour bloom/DoF ; désactivable selon tier.
- Caméra/scroll : lisser avec damping (`lerp`), piloter par un `progress` 0-1 ; pas de scroll hijack ; timeline GSAP sur `progress`.
- Interaction : `Raycaster` limité aux objets cibles ; pointer events (souris + tactile) ; alternative clavier/focus pour toute action essentielle.

## Intégration DOM
- Canvas `position: fixed/sticky` derrière le contenu, `pointer-events: none` sauf zones interactives ; ou canvas dans le flux pour une zone.
- Synchro DOM→3D : lire `getBoundingClientRect` des ancres, convertir en coordonnées monde ; mise à jour au scroll/resize seulement.
- `aria-hidden="true"` sur le canvas décoratif ; si informatif, alternative textuelle + contrôles accessibles.

## Fallbacks (tiers)
1. Complet (GPU capable) · 2. Réduit (pixel ratio, sans postpro, moins d'instances) · 3. Statique (image/SVG/CSS). Détection : `prefers-reduced-motion`, WebGL indisponible, `navigator.hardwareConcurrency`/`deviceMemory`, FPS mesuré sur 1-2 s (dégrader dynamiquement).
