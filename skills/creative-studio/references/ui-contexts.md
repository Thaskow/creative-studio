# Contextes d'interface et routage

Identifier le contexte **avant** de choisir les skills. Un projet mélange souvent plusieurs contextes : décider par page.

| Contexte | Priorité | Skills principaux | Ajouts conditionnels |
|---|---|---|---|
| MARKETING / IMMERSIVE | direction artistique, storytelling, identité, mouvement | creative-director, design-inspiration, creative-frontend, immersive-motion | threejs-experience, shader-lab, interactive-storytelling |
| PRODUCT / USER SPACE | ergonomie, personnalisation, cohérence, qualité visuelle | user-experience-designer, creative-frontend, creative-director, ux-auditor | data-visualization, visual-qa |
| ADMIN / BACK-OFFICE | efficacité, lisibilité, robustesse, accessibilité | dashboard-architect, creative-frontend, ux-auditor | data-visualization |

La 3D et les animations expérimentales sont optionnelles, jamais obligatoires ; en PRODUCT et ADMIN elles exigent une justification fonctionnelle.

Combinaisons : « PRODUCT + DATA VIZ » = user-experience-designer + data-visualization ; « + COLLABORATION » = voir `product-patterns.md` (présence, versions, permissions) ; « + THREE.JS » = ajouter threejs-experience seulement si la donnée est spatiale ou si la scène aide réellement la tâche.

Règle commune : ne jamais changer fonctionnalités ou structure métier pour l'esthétique ; skill spécialisé = responsabilité unique (pas de duplication : la 3D reste à threejs-experience, la perf à graphics-performance, la validation à visual-qa/ux-auditor).
