# Méthode de décision technologique

Choisir la techno **la plus simple** qui réalise l'intention. Monter d'un cran seulement si l'échelon inférieur échoue.

| Besoin | Techno |
|---|---|
| Hover, transitions, transformations, scroll-driven simples | CSS (`transition`, `@keyframes`, `animation-timeline`, View Transitions) |
| Icônes, illustrations, graphes simples, tracés animés | SVG (+ CSS/GSAP) |
| Beaucoup d'éléments 2D, mises à jour fréquentes, heatmaps, cartes 2D | Canvas 2D (OffscreenCanvas/worker si lourd) |
| Séquences, timelines, scroll orchestré | GSAP (+ ScrollTrigger) ou Motion |
| Vraie scène 3D, modèles, caméras, lumières | Three.js (WebGL2) |
| Effet pixel par pixel, distorsion, dissolve | Shader (GLSL via Three/OGL) |
| Calcul GPU massif (particules > ~1M, compute) | WebGPU, **avec fallback WebGL** vérifié |
| Scène conçue visuellement par un designer | Spline (export runtime : poids, contrôle limité) |
| Projet React | R3F + Drei |
| Projet Vue/Nuxt | TresJS ou Three natif (`onMounted`, import dynamique, `<ClientOnly>`) |

## Questions de décision
1. L'effet fait-il comprendre ou ressentir quelque chose d'utile ? Sinon, supprimer.
2. CSS/SVG suffit-il ? Alors pas de WebGL.
3. 2D plus lisible que 3D pour la donnée ? Alors 2D (stats, radars, heatmaps).
4. Coût : poids JS, GPU, mobile, maintenance, SSR.
5. Fallback statique défini ?

## Arbitrage esthétique / ergonomie / perf
Ergonomie > perf > esthétique quand conflit sur contenu essentiel ; esthétique peut primer sur zones décoratives tant que budget perf respecté.

## Budget (à fixer par projet, noter dans design-memory)
JS initial, poids assets 3D, LCP/INP/CLS cibles, FPS cible mesuré sur appareil milieu de gamme. Ne rien annoncer sans mesure.
