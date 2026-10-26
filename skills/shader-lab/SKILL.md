---
name: shader-lab
description: Expert shaders GLSL/WGSL/TSL et effets GPU — distorsion au survol, dissolve, transitions par masque, noise, displacement, particules GPU, réfraction, distorsion au scroll. À utiliser quand CSS/SVG ne suffisent pas pour un effet graphique ; pas pour un simple fond animé.
---

# Shader Lab

Charger `~/.claude/skills/creative-studio/references/shader-patterns.md`.

## Démarche
1. **Alternatives d'abord** : CSS (`mask`, `clip-path`, `filter`), SVG (`feDisplacementMap`), Canvas 2D. Ne passer au shader que si l'effet l'exige (distorsion de texture, procédural, interactivité GPU).
2. Vérifier la version de Three et le support réel : WebGL2 par défaut ; WebGPU/TSL seulement avec bénéfice net et fallback testé (consulter la doc de la version installée, ne pas se fier à la mémoire).
3. Choisir le véhicule : `ShaderMaterial` sur plan (hover image), post-process (effet plein écran), OGL si Three absent (léger).
4. Implémenter : uniforms lissés côté JS (`uTime`, `uProgress`, `uHover`, `uMouse`), shader court, commenté seulement si non évident.
5. Fallback : image statique/effet CSS si WebGL indisponible ou reduced-motion ; gérer perte de contexte et resize.
6. Vérifier en navigateur (`visual-qa`) : rendu, console (erreurs de compilation), mobile ; mesurer le coût si effet plein écran.

## Règles
- Pas de shader lourd pour un fond décoratif.
- Licences des shaders externes (Shadertoy, Codrops) : vérifier, réécrire plutôt que copier.
- Effet original adapté au concept, pas un « glitch » générique.
