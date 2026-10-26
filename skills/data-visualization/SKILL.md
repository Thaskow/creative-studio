---
name: data-visualization
description: Visualisation de données — séries temporelles, heatmaps, timelines, radars, distributions, comparaisons, cartes, visualisations spatiales et 3D ; choix SVG / D3 / Canvas / WebGL / Three.js, précision, lisibilité, accessibilité, performance. À utiliser dès qu'une donnée doit être représentée graphiquement (stats, trajectoires, analyses).
---

# Data Visualization

Charger `~/.claude/skills/creative-studio/references/dataviz-patterns.md`. Pour couleurs, légendes, tooltips et mise en page des graphiques, **charger aussi le skill `dataviz`** (déjà installé) au lieu de dupliquer ces règles.

## Démarche
1. Formuler la question que la donnée doit permettre de répondre ; sinon, pas de graphique.
2. Inspecter les données réelles (forme, volume, valeurs manquantes, échelles) et la stack de graphiques déjà présente.
3. Choisir la forme (tableau des choix dans `dataviz-patterns.md`) puis le rendu : **SVG/DOM** par défaut (≲ ~2 000 éléments), **D3** pour échelles/layouts (sans forcément son rendu DOM), **Canvas 2D** (milliers+ de points, heatmaps, mises à jour fréquentes), **WebGL/Three.js** seulement pour le spatial/3D réel ou des volumes massifs. La 3D n'est justifiée que si la donnée est spatiale ; sinon 2D.
4. Exactitude : axes honnêtes (zéro pour barres), unités, échelles explicites, aucune donnée ni physique inventée ; 3D cohérente avec les calculs réels.
5. Interaction : tooltips, survol/focus, filtres, brush/zoom, sélection liée entre vues ; animations de transition de données courtes et interruptibles.
6. Accessibilité : alternative textuelle/tableau de données, couleurs non seule porteuse de sens, clavier, reduced-motion.
7. Perf : décimation/agrégation (LTTB), virtualisation, Canvas pour le dense, pause hors écran.
8. Vérifier avec `visual-qa` ; perf avec `graphics-performance` si dense/3D.

## Règles
- Lisibilité > effet ; pas de 3D décorative sur des barres ou camemberts.
- Cohérence avec les tokens du produit.
