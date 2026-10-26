---
name: creative-studio
description: Point d'entrée "Creative Studio" (modes LIGHT / STANDARD / DEEP) pour créer ou refondre des interfaces web distinctives (landing, hero, scène Three.js/WebGL, shader, motion, scroll storytelling, dashboard redesign). À invoquer sur "Creative Studio", "direction artistique", "design immersif", "awwwards", "hero 3D". Orchestre les skills spécialisés ; pas pour une retouche CSS triviale.
---

# Creative Studio — orchestrateur

Principe : la créativité sert l'expérience. Pas de 3D/shader/animation sans fonction. Stack existante respectée (Nuxt ≠ React).

## Choisir le mode
- **LIGHT** : retouche UI. Lire le code voisin, modifier, vérifier. Aucun skill de direction, aucun agent.
- **STANDARD** : composant/section/page. `creative-director` (concept court) → `creative-frontend` (+ `threejs-experience`/`shader-lab`/`immersive-motion` si justifié) → `visual-qa` → corrections.
- **DEEP** : refonte/expérience. Séquence ci-dessous.
- Sans mode explicite : déduire du périmètre, l'annoncer en une ligne.

## DEEP
1. Audit produit + lecture de `<repo>/.claude/design-memory.md` s'il existe (sinon le créer en fin).
2. `design-inspiration` (2-3 références max, fiches réutilisées).
3. `concept-lab` (génération divergente + contrôle de distinctivité) puis `creative-director` : 3 directions (A éditoriale / B expressive / C produit futuriste), recommandation, **confirmer avec l'utilisateur** avant d'implémenter.
4. Design system minimal (tokens, typo, motion) → `creative-frontend`, `component-curator`.
5. Prototype isolé des interactions complexes (3D/shader) puis intégration.
6. `visual-qa` (navigateur réel, desktop + mobile, console).
7. Relecteurs selon nature : `art-director-reviewer` (identité), `ux-performance-reviewer` (UX/perf), `immersive-experience-reviewer` (si 3D). Pas tous systématiquement.
8. Une seule boucle de corrections ; s'arrêter dès qu'une solution est satisfaisante.

## Unicité (STANDARD/DEEP, ou demande « unique / sur mesure »)
`concept-lab` avant d'implémenter : concepts ancrés dans le produit, score de distinctivité ≥ 11/16, registre `~/.claude/creative-studio-log.md`. Interfaces sur demande : `references/bespoke-interfaces.md`. Pour LIGHT, ignorer.

## Contexte d'interface (à identifier d'abord, par page)
MARKETING/IMMERSIVE · PRODUCT/USER SPACE · ADMIN/BACK-OFFICE : skills principaux et ajouts dans `references/ui-contexts.md`. En PRODUCT et ADMIN, 3D et animations expérimentales seulement avec justification fonctionnelle ; ne jamais changer fonctionnalités ou structure métier pour l'esthétique.

## Routage rapide
| Demande | Skills |
|---|---|
| Landing/page premium | creative-director, design-inspiration, creative-frontend |
| Site/interface « unique », sur mesure | concept-lab, creative-director, creative-frontend (+ bespoke-interfaces) |
| Hero/objet 3D | creative-director, threejs-experience, (immersive-motion) |
| Effet GPU au survol | shader-lab |
| Admin / back-office / table de gestion | dashboard-architect, creative-frontend, ux-auditor (+ data-visualization) |
| Profil / paramètres / onboarding | user-experience-designer, creative-frontend, ux-auditor |
| Graphiques / stats / cartes / trajectoires | data-visualization (+ threejs-experience si spatial 3D utile) |
| Redesign dashboard / UX tableau | dashboard-architect ou ux-auditor, creative-frontend — pas de 3D |
| Scène qui saccade | graphics-performance, threejs-experience |
| Narration au scroll | interactive-storytelling, immersive-motion |
| Choix de composants | component-curator |
| Analyse sans modification | creative-director, ux-auditor (lecture seule) |

## Références mutualisées (charger à la demande)
`~/.claude/skills/creative-studio/references/` : `directions.md`, `typography-layout.md`, `tech-decision.md`, `threejs-architecture.md`, `shader-patterns.md`, `motion.md`, `component-sources.md`, `accessibility.md`, `performance.md`, `browser-testing.md`, `project-memory.md`, `uniqueness-engine.md`, `anti-defaults.md`, `signature-moves.md`, `bespoke-interfaces.md`, `ui-contexts.md`, `admin-patterns.md`, `product-patterns.md`, `dataviz-patterns.md`, `case-gaming-platform.md`.

## Garde-fous
- Jamais déclarer une vérification visuelle ou un FPS sans mesure réelle.
- Contenu essentiel utilisable sans JS/WebGL/animation.
- Pas de dépendance ajoutée sans la justifier (poids, maintenance, licence).
- Règles du repo (`AGENTS.md`, `CLAUDE.md`) prioritaires.
