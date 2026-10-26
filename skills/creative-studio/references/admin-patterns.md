# Patterns ADMIN / BACK-OFFICE

## Structure
- Navigation latérale compacte (groupes, icône + libellé, état actif net), fil d'Ariane, recherche globale/commande (`Ctrl/⌘+K`).
- Page type : en-tête (titre, actions primaires) → barre de filtres → table/vue → panneau latéral de détail.
- Densité réglable (confortable/compacte) ; valeur par défaut compacte pour outils experts.

## Data tables
- Colonnes priorisées, redimensionnables/masquables, en-têtes figés, colonne d'actions à droite, nombres alignés à droite + `tabular-nums`.
- Tri multi-colonnes, recherche debounced, filtres en chips lisibles, **état (filtres, tri, page) dans l'URL**, vues enregistrées.
- Pagination serveur par défaut ; virtualisation > ~500 lignes visibles ; sélection (case, shift-clic, « tout sélectionner N résultats »).
- Bulk actions : barre contextuelle, compteur, confirmation pour destructif, **annulation (undo/toast)**, résultat partiel détaillé.
- États : skeleton, vide (avec action), erreur (retry + détail), aucun résultat de filtre (bouton réinitialiser).

## Formulaires complexes
Sections/onglets, validation inline au blur + résumé à la soumission, champs dépendants, brouillons, protection contre perte de données, messages d'erreur actionnables, focus sur la première erreur, `autocomplete` pertinent.

## Permissions et audit
- Rôles → capacités ; masquer ce qui est hors de portée, désactiver avec raison (tooltip) ce qui est visible mais interdit ; autorisation toujours revérifiée côté serveur.
- Audit log : qui/quoi/quand/avant→après, filtrable, exportable, immuable côté UI.
- Actions sensibles : confirmation typée, ré-authentification si politique du produit.

## Clavier
Palette de commandes, raccourcis simples (`g` puis lettre, `/` recherche, `?` aide), jamais en conflit avec navigateur/lecteur d'écran, désactivés dans les champs de saisie, liste consultable.

## Panneaux
Drawer droit pour édition rapide sans perdre le contexte, URL partageable, Échap ferme, focus piégé/restitué.

## Checklist qualité
Tâche fréquente en ≤ 3 interactions · hiérarchie claire · densité maîtrisée · cohérence tokens · clavier complet · contraste AA · liste de 10 000 lignes fluide · erreurs réseau gérées · mobile : colonnes essentielles/cartes · motion ≤ 200 ms, sans décor · pas de dépendance superflue.
