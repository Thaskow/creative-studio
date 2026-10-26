# Accessibilité (WCAG 2.2 AA)

- Contraste 4.5:1 texte, 3:1 UI et grands textes ; vérifier sur zones animées/images.
- `prefers-reduced-motion` respecté partout (CSS + JS `matchMedia`, écoute des changements). Alternative statique des scènes 3D/shaders.
- Clavier : tout opérable, focus visible (non supprimé), ordre logique, pas de piège ; interactions drag/3D avec équivalent clavier/boutons.
- Sémantique : landmarks, un seul `h1`, titres hiérarchisés, boutons vs liens corrects ; `aria-live` poli pour mises à jour de données.
- Canvas : décoratif → `aria-hidden`; informatif → `role="img"` + `aria-label` + description/tableau alternatif.
- Texte animé (split) : conserver le texte lisible par AT.
- Pas de contenu essentiel uniquement en hover ; cibles tactiles ≥ 24px (WCAG 2.2) idéalement 44px.
- Pas de clignotement > 3 Hz ; autoplay vidéo muet, pausable.
- Ne pas exiger WebGL pour accomplir une tâche.
- Zoom 200 %/reflow 320px sans perte de contenu ; `lang` correct.
- Outils : axe (via navigateur/Playwright), Lighthouse, tests clavier manuels.
