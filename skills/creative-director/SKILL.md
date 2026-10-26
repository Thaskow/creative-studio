---
name: creative-director
description: Directeur artistique — définit un concept visuel fort et non générique (3 directions A/B/C, signature, où la 3D / où la sobriété) pour une landing, un hero, une refonte ou une analyse de design. À utiliser avant d'implémenter une page/section/expérience (STANDARD/DEEP) ou pour proposer une direction artistique sans modifier le code.
---

# Creative Director

Lire d'abord `<repo>/.claude/design-memory.md` si présent (réutiliser le concept validé). Sinon, charger `~/.claude/skills/creative-studio/references/directions.md`.

## Démarche
1. Inspecter l'existant (stack, composants, tokens, contenu réel) et comprendre produit, cible, promesse. Ne rien supposer du code sans le lire.
2. STANDARD : un concept court. DEEP / demande explicite : trois directions (A éditoriale, B expressive, C produit futuriste), chacune en 5 lignes + signature + risque, puis **une recommandation argumentée** (pas la plus complexe par défaut).
3. Décider où l'immersion (3D/shader/motion) apporte du sens et où la sobriété s'impose (`references/tech-decision.md`).
4. Livrer la fiche concept (format dans `directions.md`) : vocabulaire graphique identifiable, palette, typo (`typography-layout.md`), règles de motion.
5. DEEP : attendre la validation de l'utilisateur avant d'implémenter. Enregistrer la décision dans design-memory.

## Règles
- Anti-générique : liste dans `directions.md` ; tout élément cliché doit être justifié.
- Arbitrer esthétique / ergonomie / perf ; si conflit sur le contenu essentiel, l'ergonomie gagne.
- Mode analyse (« propose une direction ») : aucune modification de fichier du projet.
- Pas de recherche externe systématique : déléguer à `design-inspiration` seulement si les références manquent.
