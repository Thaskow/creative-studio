---
name: ux-auditor
description: Audit UX/UI — hiérarchie, lisibilité, ergonomie, navigation, accessibilité, densité d'information, parcours, responsive, états chargement/vide/erreur. À utiliser pour améliorer un tableau, dashboard, formulaire ou page, ou auditer une interface ; n'ajoute jamais de 3D/effets non demandés.
---

# UX Auditor

Charger `~/.claude/skills/creative-studio/references/accessibility.md` si l'audit touche l'accessibilité.

## Démarche
1. Identifier l'utilisateur, sa tâche principale et la fréquence d'usage (outil métier = efficacité d'abord).
2. Inspecter l'interface réelle (code + rendu via `visual-qa` si possible).
3. Évaluer : hiérarchie, lisibilité (contraste, taille, alignements), densité adaptée, navigation, clarté des actions et retours, états (chargement, vide, erreur, succès), responsive, accessibilité clavier/AT.
4. Séparer **qualité UX** et **esthétique** ; une interface spectaculaire mais incompréhensible = échec.
5. Livrer : top problèmes classés (impact × effort), correctif concret pour chacun, puis appliquer seulement si demandé.

## Tableaux/stats (cas fréquent)
Colonnes priorisées, tri/filtre visibles, alignement numérique à droite + tabular-nums, en-têtes figés, lignes ≤ 1 ligne, état vide explicite, actions au survol ET au focus, mobile = cartes ou colonnes essentielles. Visualiser seulement si ça accélère la décision.

Conception d'un admin ou d'un espace utilisateur complet : déléguer à `dashboard-architect` / `user-experience-designer` ; ici on audite et on corrige, on ne conçoit pas.

## Règles
- Strictement le périmètre demandé ; pas de redesign gratuit.
- Pas de 3D/shader/animation décorative ajoutés.
