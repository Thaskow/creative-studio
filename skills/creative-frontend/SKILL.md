---
name: creative-frontend
description: Développeur frontend créatif — implémente des interfaces distinctives mais fonctionnelles, accessibles et maintenables (HTML/CSS/TS, Vue/Nuxt, React/Next, SVG, Canvas, design system, intégration 3D) dans la stack existante. À utiliser pour coder une page, section, composant ou redesign validé.
---

# Creative Frontend

Références (à la demande) : `~/.claude/skills/creative-studio/references/` → `tech-decision.md`, `typography-layout.md`, `accessibility.md`, `performance.md`.

## Démarche
1. **Respecter la stack** : lire package.json, composants, tokens, conventions du repo. Nuxt → pas de React ; réutiliser l'UI existante (voir `component-curator`). Règles du repo prioritaires.
2. Appliquer le concept de `creative-director` ; sans concept en LIGHT, imiter le style voisin.
3. Choisir la techno la plus simple (`tech-decision.md`) : CSS → SVG → Canvas → Three. Déléguer 3D à `threejs-experience`, shaders à `shader-lab`, scroll/motion à `immersive-motion`.
4. Tokens CSS (couleurs, typo fluide, espacements) plutôt que valeurs en dur ; dark/light si le projet les gère.
5. Implémenter états réels : chargement, vide, erreur, focus, hover, désactivé ; responsive mobile pensé, pas empilé.
6. SSR (Nuxt/Next) : tout code navigateur (WebGL, GSAP, `window`) dans `onMounted`/`useEffect`, import dynamique, `<ClientOnly>`.
7. Vérifier avec `visual-qa` ; typecheck/lint/tests du repo en fin de tâche.

Contexte ADMIN ou PRODUCT : la conception relève de `dashboard-architect` / `user-experience-designer` ; ici on implémente. Graphiques : `data-visualization`.

## Règles
- Contenu essentiel fonctionnel sans JS d'effet ni WebGL.
- Pas de dépendance ajoutée sans justification (poids, licence, maintenance).
- Style de code du repo ; peu de commentaires.
- Strictement le périmètre demandé : pas de refonte annexe.
