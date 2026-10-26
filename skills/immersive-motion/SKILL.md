---
name: immersive-motion
description: Motion design et scroll storytelling — GSAP/ScrollTrigger, Motion, CSS animations, text reveal, transitions de pages, parallaxe, interactions magnétiques, synchronisation DOM/Canvas/Three. À utiliser pour donner vie à une page avec des animations intentionnelles et accessibles.
---

# Immersive Motion

Charger `~/.claude/skills/creative-studio/references/motion.md` (+ `accessibility.md`).

## Démarche
1. Pour chaque animation, écrire son **intention** (guider, expliquer, révéler, exprimer, retour, continuité). Sans intention : supprimer.
2. Définir une signature de motion (1-2 easings, durées, effet de révélation) réutilisée partout (noter dans design-memory).
3. Outil minimal : CSS (`animation-timeline`, View Transitions) → Motion → GSAP/ScrollTrigger selon complexité ; réutiliser la lib déjà installée.
4. Nuxt/Vue : `onMounted` + `gsap.context()`/`revert()` ; React : `useGSAP`. Kill des triggers/tweens au démontage ; `ScrollTrigger.refresh` après chargement des fonts/images.
5. Coordination 3D : une timeline unique pilote un `progress` consommé par la scène Three (voir `threejs-experience`).
6. Reduced-motion : `gsap.matchMedia()` / media query → versions statiques ou fondus courts.

## Règles
- Pas de scroll hijack non sollicité, pas d'animation bloquante ; pins courts avec sortie claire.
- Animer `transform`/`opacity`.
- Pas de fade-up systématique ; staggers courts et limités.
- Vérifier le rendu réel avec `visual-qa` (scroll à positions clés, mobile).
