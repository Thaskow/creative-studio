---
name: interactive-storytelling
description: Conçoit des parcours narratifs interactifs — sections reliées par une progression visuelle (objet 3D qui évolue, caméra au scroll, trajectoire reliant les étapes, données qui se construisent). À utiliser pour une landing/page produit narrative ou une démonstration « comment ça marche » ; pas pour paramètres, formulaires ou tableaux.
---

# Interactive Storytelling

## Démarche
1. Écrire le récit en 4-7 étapes en **texte pur** (message de chaque section, transition logique) : la page doit se comprendre sans animation.
2. Choisir le fil visuel unique (objet, trajectoire, courbe, donnée) qui relie les étapes ; il doit porter du sens produit (voir `creative-director`).
3. Associer à chaque étape un état du fil (position caméra, forme, valeur) ; définir un `progress` 0→1 global.
4. Implémenter avec `immersive-motion` (timeline/ScrollTrigger) et, si 3D justifiée, `threejs-experience` ; SVG/Canvas si suffisant.
5. Dégradation : sans JS/WebGL/animation → sections empilées lisibles avec visuels statiques par étape.
6. Navigation : ancres, progression visible, retour arrière possible, pas de scroll hijack.

## Règles
- Pas d'expérience immersive pour une page fonctionnelle.
- Durée totale raisonnable ; chaque étape livre une information, pas seulement un effet.
- Vérifier avec `visual-qa` (scroll complet, mobile, reduced-motion).
