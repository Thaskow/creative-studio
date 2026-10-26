# Sources de composants et d'inspiration

Ordre : 1) composants du projet 2) lib déjà installée 3) source ci-dessous (copier/adapter) 4) création originale. Vérifier : framework, licence, a11y, poids, cohérence visuelle. Ne pas copier un design tiers à l'identique.

## Composants (framework — note)
- shadcn/ui (React ; équivalents Vue : shadcn-vue, Reka UI) — base accessible, copiée dans le repo.
- Radix / Reka UI / Headless UI / Ark UI — primitives accessibles sans style.
- HeroUI (React) · Magic UI, Aceternity UI, React Bits, Skiper UI, Motion-Primitives, 21st.dev, Feral UI (surtout React/Tailwind + Motion ; **portage Vue nécessaire** : ne pas ajouter React à un projet Nuxt).
- Vue : Nuxt UI, Inspira UI, Motion-V, Vue Bits (portage Vue de React Bits).
- Uiverse (CSS/HTML pur, souvent portable) · component.gallery (référence d'anatomie/nommage, pas de code).
- Icônes : Lucide, Phosphor, Tabler, Iconify ; reicon.dev à vérifier au besoin.

## Design systems open source (source : shadcndeck.com/blog/open-source-design-systems ; licences à reconfirmer dans le dépôt)
Références de patterns (tables, formulaires, a11y, tokens) surtout pour ADMIN/PRODUCT ; ne pas adopter un système entier dans un projet qui a déjà le sien.
- shadcn/ui — https://ui.shadcn.com — React, MIT — composants copiés, Radix/Base UI + Tailwind.
- Ant Design — https://ant.design — React, MIT — admin dense, theming CSS-in-JS.
- Fluent UI — https://react.fluentui.dev — React/Web Components, MIT — système Microsoft, tokens.
- Material Design 3 — https://m3.material.io — Web Components/Android/Flutter, Apache 2.0 — tokens très complets (lib web en maintenance).
- IBM Carbon — https://carbondesignsystem.com — React/Angular/Vue/WC, Apache 2.0 — tokens partagés multi-framework, WCAG 2.1 AA ; **option Vue**.
- GitHub Primer — https://primer.style — React + CSS, MIT — outils développeur ; paquet CSS utilisable seul.
- AWS Cloudscape — https://cloudscape.design — React, Apache 2.0 — patterns tables, wizards, dashboards (dashboard-architect).
- GOV.UK Design System — https://design-system.service.gov.uk — MIT — formulaires complexes, WCAG 2.2 AA (patterns, pas de composants Vue/React).
- Gestalt (Pinterest) — https://gestalt.pinterest.systems — React, Apache 2.0 — produit grand public, a11y soignée.
- PatternFly (Red Hat) — https://www.patternfly.org — React, MIT — dashboards infra/Kubernetes.

## Inspiration
Awwwards, Godly, Siteinspire, Hoverstat.es, Lapa Ninja, Behance, Dribbble.

## 3D / immersif
threejs.org (examples, docs), Codrops (tutoriels + démos, licences par démo), Shadertoy (licences par shader), Spline, GSAP docs, Three.js Journey (payant, hors scope).

## Règles d'usage
- Fiches concises : consigner dans `design-memory.md` du projet `source → principe retenu → licence`, pour ne pas refaire la recherche.
- Accès impossible (login, anti-bot) : le dire, ne pas inventer le contenu.
- Licences : MIT/Apache OK ; CC BY-NC(-SA) = pas pour du commercial ; « inspiration only » = réécrire.
- Coût dépendances : préférer copier un composant (0 dep) à ajouter une lib entière.
