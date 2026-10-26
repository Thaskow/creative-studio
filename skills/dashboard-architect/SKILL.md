---
name: dashboard-architect
description: Architecte d'interfaces admin, back-offices et dashboards métier — data tables, filtres, tri, recherche, pagination, bulk actions, formulaires complexes, permissions, audit logs, raccourcis clavier, panneaux latéraux, command palette. À utiliser pour concevoir ou refondre un panneau administrateur / outil interne ; efficacité d'abord, jamais de 3D ou d'animation décorative.
---

# Dashboard Architect

Contexte ADMIN / BACK-OFFICE. Charger `~/.claude/skills/creative-studio/references/admin-patterns.md` (patterns et checklist) et `accessibility.md` si besoin.

## Démarche
1. Lire le code : stack, lib UI/table existantes, rôles/permissions, API. **Ne jamais changer fonctionnalités, modèle métier ou structure de données pour l'esthétique.**
2. Identifier les 3-5 tâches fréquentes de l'admin et leur coût actuel (clics, allers-retours) ; optimiser ces parcours d'abord.
3. Concevoir : navigation, hiérarchie (KPI → liste → détail), table (colonnes priorisées, filtres persistés dans l'URL, tri, pagination/virtualisation), panneau latéral pour l'édition rapide, bulk actions avec confirmation + annulation, audit log lisible, états chargement/vide/erreur/permission refusée.
4. Clavier : palette de commandes, raccourcis documentés et non conflictuels, focus géré.
5. Implémenter avec `creative-frontend` (stack et composants existants, cf. `component-curator`) ; graphiques via `data-visualization`.
6. Valider avec `ux-auditor` et `visual-qa`.

## Qualité (critères)
Rapidité des tâches, lisibilité/hiérarchie, densité maîtrisée (réglable), cohérence, accessibilité, performance (grandes listes), gestion d'erreurs, responsive, maintenabilité. Référence d'esprit : Linear, Vercel, Grafana — sobriété, vitesse, précision ; pas de surcharge visuelle.

## Règles
- Pas de Three.js ni de grandes animations sans justification fonctionnelle ; motion limité au feedback (≤ 200 ms).
- Actions destructives : confirmation explicite, annulation si possible, journalisées.
- Permissions : masquer/désactiver selon droits **et** l'indiquer ; la vérification reste côté serveur.
