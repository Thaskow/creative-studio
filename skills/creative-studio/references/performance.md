# Performance graphique et web

## Budget (définir par projet ; valeurs de départ indicatives, à ajuster)
LCP ≲ 2.5 s · INP ≲ 200 ms · CLS ≲ 0.1 · JS 3D chargé en différé (après LCP) · modèle ≲ 2 Mo · textures ≤ 2048 · FPS cible = fluide sur appareil milieu de gamme (**mesuré**, jamais supposé).

## Mesure
- Navigateur : Performance panel/trace, `renderer.info` (draw calls, triangles, textures, geometries), `performance.memory` (Chrome), `stats.js` en dev, Lighthouse (mobile throttlé).
- Chrome MCP : `javascript_tool` pour lire `renderer.info`/FPS via rAF sur 3-5 s ; noter appareil, taille viewport, throttling.
- Comparer avant/après avec le même scénario.

## Dégradation progressive
1. Complet · 2. Simplifié (pixel ratio ≤ 1.5, sans postpro, instances réduites, ombres off) · 3. Statique (poster/SVG/CSS). Sélection : reduced-motion, WebGL absent, mémoire/CPU, FPS moyen < seuil sur 1-2 s → palier inférieur (avec hystérésis).

## Leviers (par ordre de gain habituel)
1. Ne pas rendre : pause hors écran/onglet caché, rendu à la demande.
2. Pixel ratio / résolution des passes.
3. Draw calls : instancing, merge, atlas, matériaux partagés.
4. Assets : Draco/Meshopt, KTX2, mipmaps, tailles de texture, lazy load.
5. Postprocessing : retirer/réduire.
6. Shaders : moins de lectures texture, pas de boucles dynamiques.
7. JS : pas d'allocation par frame, pas de `getBoundingClientRect` par frame.
8. Chargement : import dynamique, `preload` ciblé, poster LCP en image réelle.

## Anti-patterns
Boucle 60 fps pour scène statique · plusieurs renderers · textures 4K décoratives · bloom partout · listeners non retirés · ressources GPU non `dispose()` · animations de propriétés layout (`top/left/width`).

## Rapport
Chiffres mesurés (avant/après), conditions de test, ce qui n'a pas pu être mesuré.
