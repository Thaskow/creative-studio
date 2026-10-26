# Moteur d'unicité

L'unicité vient de la **spécificité** : plus un choix est ancré dans le produit réel (sa matière, son vocabulaire, ses données, ses gestes), moins il peut être générique. Un style appliqué par-dessus un produit est interchangeable ; un système dérivé du produit ne l'est pas.

## 1. Ancrage (obligatoire)
Répondre en une ligne chacun :
- **Objet réel** : que manipule l'utilisateur ? (cartes, trajectoires, factures, partitions, sondes…)
- **Geste réel** : que fait-il le plus souvent ? (viser, trier, comparer, planifier, monter en niveau…)
- **Matière** : quelle texture/lumière/son évoque le domaine ? (béton, papier carbone, verre, câble, cadran…)
- **Vocabulaire** : 10 mots du métier (ils nourrissent labels, micro-copy, noms de sections).
- **Tension** : quel conflit le produit résout ? (précision vs vitesse, rigueur vs plaisir…). Le design incarne cette tension.

## 2. Routes de divergence (une par concept, jamais deux fois la même)
- **Métaphore du domaine** : le produit *est* un objet (tableau de bord = cockpit, console de mixage, planche de topographie, carnet de laboratoire). Dériver structure, composants, nomenclature.
- **Contrainte forte** : imposer une règle créatrice (une seule couleur + noir ; grille 8 colonnes strictes ; tout en mono ; pas d'images, que de la donnée ; tout aligné sur une trajectoire ; échelle typo unique ×3). La contrainte crée la cohérence et l'originalité.
- **Tension inversée** : renverser une convention du genre (sombre → clair papier ; gaming néon → cartographie sobre ; dashboard dense → une seule question par écran ; navigation latérale → navigation par commande).
- **Emprunt lointain** : transposer un langage d'un autre domaine (cartographie, presse, signalétique, instrumentation, architecture, typographie industrielle, partitions) — principes, pas pastiche.
- **Donnée comme matière** : la visualisation *devient* l'identité (la courbe du produit sert de fil, de divider, d'icône).

## 3. Contenu d'un concept (≤ 8 lignes)
Nom de code · métaphore · signature (1 geste mémorable) · système (typo, grille, couleur, matière, motion) · interface-clé · ce qu'on refuse (3 interdits) · coût/risque.

## 4. Contrôle de distinctivité (8 critères, 0-2 chacun, seuil 11/16)
1. **Spécificité** : peut-on deviner le produit sans logo ni texte ?
2. **Signature** : un geste mémorable, nommable en une phrase ?
3. **Typo** : choix intentionnel, échelle/contraste non standard, pas la paire par défaut.
4. **Composition** : au moins une rupture de grille volontaire et lisible ; pas de template reconnaissable.
5. **Matière/couleur** : palette dérivée du domaine, accent justifié, pas la combinaison tendance du moment.
6. **Interaction** : au moins un comportement propre au produit (pas seulement hover/fade).
7. **Cohérence** : règles tenant sur 5 écrans/états différents.
8. **Service du produit** : chaque élément remarquable aide la tâche ou le sens.
Verdict : < 11 → régénérer une fois ; encore < 11 → choisir le meilleur et noter les compromis. Ne pas boucler.

## 5. Test final « page blanche »
Masquer logo et texte : la page est-elle reconnaissable ? Remplacer le contenu par un autre produit : le design casse-t-il (donc il est spécifique) ou tient-il tel quel (donc générique) ?

## 6. Registre inter-projets
`~/.claude/creative-studio-log.md` : une ligne par projet `date · projet · concept · signature · polices · couleur d'accent · métaphore`. Lire avant de diverger ; interdire de reprendre la même signature, la même paire de polices ou la même route sans raison. Aucun secret ni donnée client.

## 7. Du concept au système
Dériver depuis le concept : tokens (couleur, typo, rayon, ombre, bordure), grille, règles de motion, forme des composants (un bouton de cockpit ≠ un bouton de journal), micro-copy. Documenter dans `design-memory.md`. Les décisions « refusées » y figurent aussi.
