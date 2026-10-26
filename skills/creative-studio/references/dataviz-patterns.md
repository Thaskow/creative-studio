# Patterns de visualisation

## Forme selon la question
| Question | Forme |
|---|---|
| Évolution dans le temps | Ligne/aire (peu de séries), small multiples, sparkline |
| Comparaison de catégories | Barres horizontales triées |
| Profil multi-métriques (≤ 6-8 axes, normalisés) | Radar (échelle commune, comparaison à une référence) ; sinon barres groupées |
| Distribution | Histogramme, boxplot/violin, strip plot |
| Densité spatiale/temporelle | Heatmap (Canvas si dense), carte de chaleur sur carte de jeu |
| Séquence d'événements | Timeline/gantt synchronisée aux autres vues |
| Corrélation | Nuage de points (Canvas > ~5 000) |
| Spatial réel (positions, trajectoires) | Carte 2D d'abord ; 3D si la hauteur/profondeur porte du sens |
| Part d'un tout | Barre empilée ou donut sobre (≤ 5 parts) |

## Rendu
- **SVG/DOM** : interactif, accessible, ≲ 2 000 éléments. **D3** : scales, axes, layouts, brush ; éviter la mise à jour DOM concurrente avec le framework (laisser Vue/React rendre, D3 calcule).
- **Canvas 2D** : dense, heatmaps, mises à jour fréquentes ; recréer l'accessibilité (tableau caché, focus sur éléments clés), hit-testing manuel.
- **WebGL/Three** : données spatiales 3D, très gros volumes, caméra libre. Mêmes règles de cycle de vie que `threejs-architecture.md`.
- Réutiliser la lib de graphiques déjà installée (Chart.js, ECharts, uPlot, Observable Plot…) avant d'en ajouter.

## Précision
Zéro pour barres, axes étiquetés + unités, échelles log signalées, normalisation expliquée (radar), pas d'interpolation trompeuse, valeurs manquantes visibles, échantillonnage/agrégation annoncés (LTTB pour séries).

## Interaction
Tooltip au survol et au focus, crosshair synchronisé entre vues, brush/zoom avec réinitialisation, filtres liés, sélection persistante, transitions de données 200-400 ms interruptibles.

## Accessibilité
Résumé textuel + table de données alternative, couleur jamais seul porteur (formes/étiquettes), palette daltonisme-safe, navigation clavier des points clés, reduced-motion.

## Spatial / 3D (jeux, trajectoires)
Coordonnées et échelles identiques aux données source, 2D↔3D bascule cohérente, timeline partagée, aucune trajectoire embellie. Si la 2D répond mieux, garder la 2D.

## Perf
Agrégation côté serveur si possible, décimation, virtualisation, `OffscreenCanvas`/worker pour le lourd, pause hors écran.
