# Motion design

Chaque animation a une intention : guider le regard, expliquer, révéler, exprimer l'identité, donner un retour, assurer la continuité. Sinon, supprimer.

## Outils
- CSS d'abord (transform/opacity uniquement, `will-change` ponctuel). `animation-timeline: scroll()/view()` là où supporté (progressive enhancement).
- Motion (ex Framer Motion / `motion`) : composants UI, layout animations, gestes.
- GSAP (gratuit depuis 2025, plugins inclus : ScrollTrigger, SplitText, Flip) : timelines, scroll, SVG. Nuxt : `onMounted`, `gsap.context()` + `ctx.revert()` au démontage ; React : `useGSAP`.
- Lenis (smooth scroll) : optionnel, jamais pour altérer la vitesse de façon surprenante ; désactivé en reduced-motion.

## Principes
- Durées : micro 120-200 ms, transitions 300-600 ms, séquences ≤ ~1.2 s. Easing expressif mais cohérent (1 ou 2 courbes par projet : ex. `power3.out`, `expo.inOut`).
- Hiérarchie de timing : stagger court (30-80 ms), 6-10 éléments max.
- Une signature de motion (ex. révélation par masque) répétée de façon cohérente, pas dix effets différents.
- Éviter : fade-up sur tout, parallaxe forte sur le texte, animations bloquant l'interaction, scroll hijack (pin court et sortie claire seulement si nécessaire).

## Patterns
- Text reveal : SplitText par lignes/mots, masque `overflow:hidden`, texte réel conservé pour lecteurs d'écran (`aria-label`).
- Scroll storytelling : `ScrollTrigger` avec `scrub`, `pin` limité, timeline unique pilotant DOM + `progress` 3D.
- Transitions de page : View Transitions API (fallback simple fondu).
- Magnétisme/curseur : seulement `pointer: fine`, amplitude faible, inactif au clavier.
- Données : animer les changements (count-up, morph de path) rapide, interruptible.

## Accessibilité
`@media (prefers-reduced-motion: reduce)` : retirer parallaxe/scrub/auto-play, garder fondus courts ; `gsap.matchMedia()`. Pas de clignotement > 3 Hz. Pauses disponibles pour tout mouvement > 5 s.

## Perf
Animer `transform/opacity`, éviter layout thrash, `ScrollTrigger.refresh` après chargement fonts/images, kill des triggers au démontage.
