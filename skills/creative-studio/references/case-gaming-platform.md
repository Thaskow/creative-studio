# Cas d'école : plateforme d'analyse de jeu (exemple)

Exemple : plateforme d'outils et d'analyse pour un jeu compétitif (type Counter-Strike 2). Adaptez les surfaces à votre produit. **Ne rien modifier** sans demande explicite ; inspecter le site et le code avant toute proposition précise.

## Ton
Technique, compétitif, précis, immersif — pas de néons gaming génériques. Vocabulaire : HUD fin, cotes, coordonnées, trajectoires, textures de matériaux de cartes (béton, métal, poussière) en traitement discret.

## Contexte par page (voir `ui-contexts.md`)
| Page | Contexte | Skills clés |
|---|---|---|
| Homepage | MARKETING/IMMERSIVE | creative-director, immersive-motion (+ threejs/shader/storytelling si justifié) |
| Profil joueur | PRODUCT/USER SPACE | user-experience-designer, creative-frontend, ux-auditor |
| Statistiques | PRODUCT + DATA VIZ | user-experience-designer, data-visualization (SVG/Canvas, pas de 3D) |
| Nade Solver | PRODUCT + VIZ (+ THREE.JS si utile) | data-visualization, threejs-experience si 3D plus lisible que 2D |
| Démo 2D/3D | PRODUCT + VIZ + THREE.JS selon le mode | data-visualization, threejs-experience, graphics-performance |
| Équipes/playbooks | PRODUCT + COLLABORATION | user-experience-designer, data-visualization (terrain 2D) |
| Paramètres utilisateur | PRODUCT/USER SPACE | user-experience-designer, ux-auditor |
| Panneau admin | ADMIN/BACK-OFFICE | dashboard-architect, creative-frontend, ux-auditor |

Ne jamais changer fonctionnalités ou structure métier pour l'esthétique.

## Par surface (la techno suit le besoin)
- **Homepage** : signature = trajectoire de grenade (arc balistique) qui relie les sections ; caméra légère au scroll ; HUD discret. 3D seulement si le hero la justifie ; poster statique en fallback.
- **Parcours / comment ça marche** : pipeline animé démo → événements → données (SVG/GSAP suffisent probablement).
- **Fonctionnalités** : modules interactifs distincts (mini-démos), pas une grille de cartes identiques.
- **Sécurité** : sobre, schémas techniques crédibles, zéro spectacle.
- **Nade Solver** : 3D utile si fidèle aux calculs réels (arcs, impacts, collisions, vues) ; ne jamais inventer de physique ; garder la 2D si plus lisible.
- **Analyse de démos** : carte 3D, caméra libre, timeline synchronisée, bascule 2D↔3D ; vérifier d'abord ce qui existe dans le code et les données.
- **Stats joueurs** : radar, comparaisons, séries temporelles, heatmaps en SVG/Canvas/DOM ; pas de Three.js par défaut.
- **Équipes/playbooks** : terrain tactique 2D interactif, phases animées ; lisibilité et collaboration d'abord.
