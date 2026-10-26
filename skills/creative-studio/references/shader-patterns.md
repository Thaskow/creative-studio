# Patterns shaders

Vérifier : version Three, support WebGPU (`navigator.gpu`, caniuse/MDN au moment de l'usage), WebGL2 par défaut. TSL (`three/tsl`) = node-based, compile vers WGSL/GLSL ; utile si WebGPURenderer, sinon `ShaderMaterial` GLSL.

## Choix
- Effet sur une image/DOM au survol : plan Three + `ShaderMaterial` (texture + uniforms `uTime`, `uHover`, `uMouse`) ; alternatives CSS/SVG (`filter: url(#feDisplacementMap)`, `mask`, `clip-path`) à évaluer d'abord.
- Fond animé : gradient CSS/canvas 2D suffit souvent ; shader seulement si interactif ou procédural riche.
- Lib légère possible : OGL (≈30 Ko) si Three n'est pas déjà chargé.

## Patterns
- **Distorsion hover** : `uv += (noise(uv*s+t) - .5) * uHover * k` ; ou displacement map ; lisser `uHover` côté JS (lerp).
- **Dissolve/reveal** : `step(uProgress, noise(uv*s))` + liseré `smoothstep` émissif.
- **Transition par masque** : texture A/B, `mix(a, b, smoothstep(e0,e1, mask + uProgress))`.
- **Scroll distortion** : vitesse de scroll lissée → `uVelocity` → décalage RGB/ondulation (amplitude faible).
- **Réfraction/verre** : `MeshPhysicalMaterial.transmission` d'abord (coûteux) ; sinon fake via normal map + env.
- **Particules GPU** : positions dans texture (GPGPU) ou attributs + `gl_PointSize` ; instancing d'abord.
- **Noise** : simplex/value noise 2D/3D inline ; précalculer en texture si coûteux.
- **Fluide léger** : ping-pong render targets basse résolution (256²) ; désactivable.

## Règles
- Uniforms mis à jour par frame, pas de allocations dans la boucle ; `precision highp float` sur desktop, `mediump` testé sur mobile.
- Pas de branchements lourds ni boucles longues dans le fragment ; limiter les lectures de texture.
- Alternative obligatoire : image statique ou effet CSS si WebGL absent / reduced-motion.
- Tester aussi la perte de contexte et le redimensionnement.
- Licences : Shadertoy = vérifier la licence de chaque shader avant réutilisation (souvent CC BY-NC-SA) ; réécrire plutôt que copier.
