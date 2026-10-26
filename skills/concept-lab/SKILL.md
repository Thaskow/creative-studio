---
name: concept-lab
description: Moteur d'unicité — génère des concepts réellement distincts (métaphore, contrainte, signature, interface sur mesure) et les passe au contrôle de distinctivité avant toute implémentation. À utiliser pour tout site ou interface « unique », « sur mesure », « qui ne ressemble à rien d'autre », ou quand un résultat paraît générique ; appelé par creative-director en STANDARD/DEEP.
---

# Concept Lab

Charger `~/.claude/skills/creative-studio/references/uniqueness-engine.md` (méthode), puis `anti-defaults.md` (empreintes génériques à éviter) et, selon le besoin, `signature-moves.md` (catalogue) ou `bespoke-interfaces.md` (interfaces sur demande).

## Démarche
1. **Ancrer** : produit, public, 1 phrase de promesse, ce qui rend le produit *vraiment* différent (matière, geste, donnée, vocabulaire du métier). Sans ancrage, pas de concept.
2. **Diverger** : produire 3 concepts par des routes différentes (métaphore du domaine, contrainte forte, tension inversée — détails dans `uniqueness-engine.md`). Ils doivent différer par structure et interaction, pas seulement par couleur.
3. **Pour chaque concept** : métaphore, signature (1 geste mémorable), système (typo, grille, matière, motion), interface-clé (si la tâche s'y prête, un paradigme d'interaction propre, cf. `bespoke-interfaces.md`), coût (techno, perf, risque).
4. **Contrôle de distinctivité** (grille de `uniqueness-engine.md`, 8 critères /2) : rejeter < 11/16 ou toute empreinte de `anti-defaults.md` non justifiée ; régénérer une seule fois, pas en boucle.
5. **Registre** : lire/écrire `~/.claude/creative-studio-log.md` (signatures, polices, palettes déjà utilisées) pour ne pas répéter d'un projet à l'autre ; consigner le choix.
6. Recommander un concept (pas le plus complexe), le valider avec l'utilisateur en DEEP, puis transmettre à `creative-frontend` avec le design system dérivé.

## Règles
- L'unicité sert le produit : un concept bizarre mais illisible est rejeté ; l'ergonomie prime sur le contenu essentiel.
- Ne copier aucune référence ; transposer le principe.
- Admin/back-office : unicité par la précision, le vocabulaire et le workflow, pas par le spectacle.
- Sortie courte : 3 concepts en ≤ 8 lignes chacun + tableau de score + recommandation.
