# Validation navigateur

## Outils disponibles (vérifiés 2026-10-26)
- **Claude in Chrome** (`mcp__claude-in-chrome__*`, outils différés : charger via ToolSearch en un seul appel ; invoquer d'abord le skill `claude-in-chrome`) : navigation, screenshots, `resize_window`, `read_console_messages`, `read_network_requests`, `javascript_tool`, `gif_creator`. Outil par défaut ici.
- Playwright : **non installé** globalement. Ne l'ajouter que si un projet a besoin de tests automatisés répétables (`npm i -D @playwright/test` dans ce projet, jamais global).
- Skill `run` : lancer l'app locale avant de la tester.

## Protocole
1. Démarrer l'app (dev server en arrière-plan), ouvrir un **nouvel onglet** (ne pas réutiliser ceux de l'utilisateur).
2. Desktop 1440×900, tablette 820×1180, mobile 390×844 : 1 screenshot utile par format/état clé (pas de série).
3. Console : erreurs/warnings (WebGL, hydratation SSR, 404 assets) via `read_console_messages` avec `pattern`.
4. Réseau : poids des assets 3D, échecs.
5. Interactions : hover, clic, scroll (positions clés), clavier (Tab), redimensionnement, `prefers-reduced-motion` (émuler si possible ou `javascript_tool` + media query).
6. Fallback : désactiver WebGL (flag/ `getContext` stub via JS) ou simuler l'échec de chargement du modèle → vérifier le poster.
7. Comparer au concept (fiche de `creative-director`) ; lister écarts ; corriger ; re-vérifier uniquement les zones touchées.

## Interdits
- Ne pas déclarer « vérifié » sans l'avoir fait ; indiquer ce qui n'a pas pu l'être (ex. GPU mobile réel, Safari).
- Pas de dialogues JS (alert/confirm) ; arrêter et demander après 2-3 échecs d'un même outil.
- Ne pas modifier un site distant ; en production, lecture seule.
