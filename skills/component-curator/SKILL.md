---
name: component-curator
description: Sélectionne le bon composant UI — réutilisation, adaptation ou création — parmi l'existant et les bibliothèques (shadcn, Radix/Reka, Magic UI, Aceternity, React Bits, Nuxt UI, Inspira…), en vérifiant compatibilité framework, accessibilité, licence et coût en dépendances. À utiliser avant d'ajouter un composant ou une lib.
---

# Component Curator

Sources et règles : `~/.claude/skills/creative-studio/references/component-sources.md`.

## Démarche
1. Chercher dans le repo (Grep) un composant équivalent et la lib UI déjà installée ; réutiliser en priorité.
2. Sinon explorer 2-3 candidats pertinents (WebFetch/Chrome si nécessaire).
3. Pour chacun : compatible stack (React-only dans Nuxt = portage ou rejet), accessible (clavier, ARIA), licence, poids/dépendances, cohérence visuelle avec les tokens du projet.
4. Décider : **réutiliser** / **adapter** (copier le code, 0 dépendance) / **créer** (si aucun ne s'harmonise).
5. Présenter la décision en 3 lignes max par candidat ; consigner la source retenue dans design-memory.

## Règles
- Pas d'assemblage de composants visuellement incompatibles ; cohérence avant nouveauté.
- Pas de lib entière pour un composant ; préférer copier/adapter.
- Ne rien installer sans accord si cela ajoute une dépendance notable.
