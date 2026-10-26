---
name: visual-qa
description: Validation visuelle dans un vrai navigateur — screenshots desktop/mobile, responsive, interactions, console, chargement 3D, fallbacks, comparaison au concept. À utiliser après toute modification visuelle STANDARD/DEEP, ou pour diagnostiquer un défaut d'affichage.
---

# Visual QA

Protocole détaillé : `~/.claude/skills/creative-studio/references/browser-testing.md`.

## Démarche
1. Outil : Claude in Chrome (invoquer le skill `claude-in-chrome`, charger les outils en un seul ToolSearch). Playwright n'est pas installé : ne l'ajouter qu'en cas de besoin de tests répétables dans un projet.
2. Lancer l'app locale si besoin (skill `run`), ouvrir un nouvel onglet.
3. Vérifier : desktop 1440×900 et mobile 390×844 (tablette si pertinent), débordements, interactions clés, scroll aux positions clés, clavier, console (avec `pattern`), réseau (assets 3D), fallbacks, reduced-motion.
4. Comparer au concept ; lister les écarts ; corriger ; ne re-vérifier que les zones modifiées.

## Règles
- Screenshots seulement ceux qui servent à décider.
- Jamais « vérifié » sans l'avoir fait ; préciser ce qui n'a pas pu l'être (appareil réel, Safari, GPU faible).
- Site distant : lecture seule.
- Après 2-3 échecs d'outil, s'arrêter et demander.
