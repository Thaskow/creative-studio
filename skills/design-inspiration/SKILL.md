---
name: design-inspiration
description: Chercheur de références créatives (Awwwards, Godly, Codrops, Three.js examples, React Bits, 21st.dev…) — extrait des principes réutilisables et vérifie licences/contraintes. À utiliser quand une direction artistique manque de références ou que l'utilisateur demande de l'inspiration ; pas pour chaque tâche.
---

# Design Inspiration

Sources et règles de licence : `~/.claude/skills/creative-studio/references/component-sources.md`. Lire d'abord les références déjà consignées dans `<repo>/.claude/design-memory.md` : si elles suffisent, ne pas chercher.

## Démarche
1. Nommer le type de design visé (hero 3D, dashboard, storytelling, grille éditoriale…).
2. Rechercher 3-5 références ciblées (WebSearch/WebFetch, ou Chrome pour observer interactions/animations). Si la page est inaccessible (login, anti-bot, JS lourd), le dire : ne jamais prétendre avoir vu une référence.
3. Pour chaque référence : composition, typo, interaction, animation, technique probable (CSS/GSAP/WebGL), coût perf.
4. Extraire le **principe** (pas le design) et l'adapter au produit ; une ligne « ce qu'on retient / ce qu'on évite ».
5. Vérifier licence et contraintes techniques avant tout emprunt de code.
6. Consigner une fiche concise (`source → principe → licence`) dans design-memory pour éviter de refaire la recherche.

## Règles
- Sous-agent recommandé si la recherche est large (beaucoup de texte, peu de conclusion) ; réponse courte exigée.
- Ne jamais copier intégralement un design ou un shader tiers.
- Max 5 références par passe sauf demande contraire.
