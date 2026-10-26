# Interfaces sur demande (sur mesure)

But : concevoir, pour une tâche donnée, l'interface **que cette tâche appelle**, au lieu d'assembler formulaire + tableau + modale.

## Méthode
1. **Tâche** : qui fait quoi, à quelle fréquence, avec quelles données, quelle erreur coûte cher ?
2. **Objet central** : quelle chose l'utilisateur doit voir et manipuler ? La rendre manipulable directement (plan, planning, graphe, timeline, terrain, pipeline).
3. **Paradigme** : choisir un paradigme d'interaction adapté, hors du CRUD par défaut :
   - Canevas manipulable (déplacer, relier, annoter) : tactique, planning, workflow.
   - Scrub/timeline : analyse temporelle, replay, historique.
   - Comparaison côte à côte / superposition (onion skin, slider avant-après).
   - Commande + aperçu live (palette de commandes, langage de requête) pour experts.
   - Progression guidée (une décision par écran) pour tâches risquées ou rares.
   - Vue maître-détail à panneaux liés (survol dans l'un → surbrillance dans l'autre).
   - Mode lecture ↔ mode édition distincts, avec transition explicite.
4. **Vocabulaire** : libellés, icônes et états issus du métier ; composants dont la forme exprime la fonction.
5. **Efficacité** : tâche fréquente en ≤ 3 interactions, clavier complet, annulation, états vide/erreur dédiés.
6. **Prototype** : implémenter d'abord le cœur interactif isolé (données réelles ou réalistes), valider avec `visual-qa`, puis habiller.
7. **Dégradation** : équivalent accessible (tableau, liste, formulaire) pour toute interaction directe ; mobile = version pensée, pas réduite.

## Garde-fous
- Nouveauté ≠ complexité : si l'utilisateur doit apprendre, apporter un indice discret (affordance, aide `?`).
- Ne jamais perdre une fonctionnalité existante ni changer le modèle métier ; l'interface change, la logique reste.
- Un paradigme original par écran clé, pas partout (sinon incohérence).
- Mesurer : temps de tâche, nombre de clics, erreurs, avant/après quand possible.

## Exemples de transposition
| Tâche | Interface générique | Interface sur mesure |
|---|---|---|
| Planifier des sessions d'équipe | formulaire + liste | calendrier-canevas, glisser pour créer, présence en surcouche |
| Définir une stratégie | tableau d'étapes | terrain interactif avec phases et trajectoires |
| Comparer des périodes | deux graphes | superposition avec curseur de comparaison |
| Configurer des rôles | matrice de cases | graphe de capacités avec simulation « voir en tant que » |
| Trier des incidents | tableau paginé | file de triage clavier-first + panneau de contexte |
