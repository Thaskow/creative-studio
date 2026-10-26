---
name: graphics-performance
description: Optimisation graphique et web — scène Three.js qui saccade, FPS, draw calls, poids des modèles/textures, GPU/mémoire, animations hors écran, Core Web Vitals, mobile, dégradation progressive. À utiliser pour diagnostiquer et corriger des problèmes de performance de rendu, ou fixer un budget.
---

# Graphics Performance

Charger `~/.claude/skills/creative-studio/references/performance.md` (+ `threejs-architecture.md` pour la 3D).

## Démarche
1. **Mesurer d'abord** : `renderer.info` (draw calls, triangles, textures), FPS sur 3-5 s, trace Performance, poids réseau, Lighthouse mobile (via Chrome MCP `javascript_tool` ou DevTools). Noter appareil/viewport/throttling.
2. Identifier le goulot (CPU JS, GPU fill-rate, draw calls, mémoire, chargement) avant de modifier.
3. Appliquer les leviers par ordre de gain (ne pas rendre → pixel ratio → draw calls → assets → postpro → shaders → JS).
4. Mettre en place la dégradation : complet → simplifié → statique, avec hystérésis.
5. Re-mesurer dans les mêmes conditions ; rapporter avant/après.

## Règles
- Jamais annoncer un FPS/score non mesuré ; dire ce qui n'a pas pu être testé (mobile réel…).
- Pas de boucle 60 fps pour une scène statique.
- Budget défini par projet (noté dans design-memory), pas de seuil arbitraire.
- Contenu essentiel utilisable même si le rendu échoue.
