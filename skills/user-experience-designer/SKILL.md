---
name: user-experience-designer
description: Concepteur d'espaces utilisateurs et d'interfaces produit — profils, paramètres, onboarding, favoris, activité/historique, personnalisation, feedback, empty states, confidentialité, parcours. À utiliser pour créer ou refondre un espace connecté, des paramètres ou un flux produit premium, rapide et cohérent avec l'identité.
---

# User Experience Designer

Contexte PRODUCT / USER SPACE. Charger `~/.claude/skills/creative-studio/references/product-patterns.md`.

## Démarche
1. Lire le code et le design-memory : identité, tokens, composants, parcours existants. Ne pas changer les fonctionnalités ni la structure métier pour l'esthétique.
2. Définir l'utilisateur, son objectif et le « moment de valeur » (premier résultat rapide).
3. Concevoir les parcours : onboarding progressif, profil, paramètres groupés et cherchables, favoris, historique, personnalisation (thème, densité, widgets), confidentialité claire (consentements, export/suppression, visibilité).
4. Soigner : empty states utiles (action suivante), feedback immédiat (optimiste + annulation), états chargement (skeleton), erreurs actionnables, cohérence des libellés.
5. Motion/effets seulement s'ils aident compréhension, feedback ou plaisir (transitions d'état, micro-interactions) ; sobres, réduits en `prefers-reduced-motion`.
6. Implémenter avec `creative-frontend`, identité via `creative-director` (léger), visualisations via `data-visualization`, validation `ux-auditor` + `visual-qa`.

## Règles
- Premium = fluidité, cohérence, détails ; pas surcharge visuelle.
- Paramètres : sauvegarde claire (auto avec confirmation ou bouton), valeurs par défaut sûres, réinitialisation possible.
- Confidentialité : défaut le plus protecteur, explication en une phrase.
- 3D/shader : jamais par défaut dans l'espace utilisateur.
