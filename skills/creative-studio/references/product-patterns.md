# Patterns PRODUCT / USER SPACE

## Onboarding
Progressif et sautable, 3-5 étapes max, valeur rapide (premier résultat avant la configuration complète), checklist persistante, contextuel (tooltips au moment du besoin) plutôt que tour modal.

## Profil et activité
Identité visible et éditable en place, statistiques clés en tête, historique chronologique filtrable, favoris/épingles accessibles partout, partage avec contrôle de visibilité.

## Paramètres
Groupés par intention (compte, apparence, notifications, confidentialité, données), recherche de paramètres, effet immédiat visible (aperçu), sauvegarde explicite ou auto avec confirmation, réinitialisation par groupe.

## Personnalisation
Thème (clair/sombre/système), densité, accent, widgets/ordre de panneaux, langues ; persistance compte (pas seulement localStorage) ; défauts soignés.

## Confidentialité
Défaut protecteur, libellés en langage clair, consentements granulaires, export et suppression des données, visibilité du profil, journal des sessions/appareils.

## Feedback et états
- Optimiste + annulation ; toasts brefs non bloquants (`aria-live`).
- Skeleton à la forme du contenu ; empty state = explication + action suivante + éventuelle illustration légère.
- Erreurs : cause, action, pas de jargon.

## Motion/plaisir
Micro-interactions de confirmation, transitions d'état (150-300 ms), progression visible. Premium = cohérence + vitesse + détails, pas effets. Reduced-motion respecté. 3D/shader exclus par défaut.

## Collaboration (équipes/playbooks)
Présence/auteur visibles, modifications attribuées, conflits explicites, permissions de partage claires, historique/versions, lisibilité avant décor.
