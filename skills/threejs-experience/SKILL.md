---
name: threejs-experience
description: Expert Three.js / 3D interactif — hero 3D, objet réagissant au curseur/scroll, caméra animée, GLTF, instancing, postprocessing, visualisations 3D de données, R3F/TresJS, cycle de vie GPU et fallbacks. À utiliser pour créer, intégrer, déboguer ou optimiser une scène 3D web ; pas pour un simple bouton animable en CSS.
---

# Three.js Experience

Charger `~/.claude/skills/creative-studio/references/threejs-architecture.md` (cycle de vie, chargement, rendu, intégration DOM, fallbacks) et, pour l'optimisation, `performance.md`.

## Avant de coder
1. La 3D est-elle justifiée (sens, donnée, démo produit) ? Sinon proposer CSS/SVG/2D (`tech-decision.md`).
2. Stack : `three` déjà présent et version ? React → R3F + Drei si projet React ; Vue/Nuxt → TresJS ou Three natif. Jamais de seconde stack frontend pour une lib 3D.
3. Données réelles : une scène technique (trajectoires, cartes) se calcule à partir des vraies données ; ne pas inventer de physique ni de résultats.
4. Définir le budget (poids modèle, pixel ratio, FPS à mesurer) et les 3 paliers de fallback.

## Implémentation
- Module `createScene(canvas, opts)` agnostique du framework + wrapper de composant mince.
- Import dynamique, SSR-safe, `ResizeObserver`, pause hors écran/onglet caché, rendu à la demande si statique.
- Caméra/scroll pilotés par un `progress` lissé, intégrés à `immersive-motion` ; aucun scroll hijack.
- `dispose()` complet (géométries, matériaux, textures, render targets, renderer, listeners, rAF).
- Poster statique pendant chargement et en cas d'échec ; `prefers-reduced-motion` → scène figée ou poster.
- Actions essentielles accessibles au clavier ; canvas décoratif en `aria-hidden`.

## Vérification
`visual-qa` (console WebGL, resize, mobile, fallback) puis `graphics-performance` si perf douteuse ; `immersive-experience-reviewer` en DEEP. Ne jamais annoncer un FPS non mesuré.
