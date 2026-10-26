# Typographie et mise en page

## Typo
- 2 familles max (display + texte) ; mono pour données/HUD. Éviter par défaut : Inter/Roboto/Arial seuls, Space Grotesk systématique.
- Sources : Google Fonts, Fontshare, Bunny Fonts (RGPD : auto-héberger via `@font-face`, `font-display: swap`, subset latin, woff2).
- Échelle fluide : `clamp()` ; display 8-20vw possible si une seule ligne forte. Interligne display 0.9-1.05, texte 1.5-1.7. Mesure 55-75 car.
- Variable fonts : animer `wght`/`wdth` avec parcimonie (reflow coûteux).
- Chiffres tabulaires (`font-variant-numeric: tabular-nums`) pour toute donnée.
- Contraste texte ≥ 4.5:1 (3:1 grands titres). Vérifier sur images/shaders.

## Layout
- Grille 12 colonnes + ruptures volontaires ; asymétrie par décalage de colonnes, pas par désordre.
- Rythme : alterner densité/respiration, plein écran/étroit, texte/visuel. Un seul « moment fort » par écran.
- Éditorial : légendes, numérotation de sections, filets fins, marges généreuses.
- Produit/HUD : cadres, repères, coins, micro-labels mono ; sobriété (pas de bruit décoratif).
- Dashboard : hiérarchie 1 KPI héros → détail ; alignements stricts ; densité réglable.
- Responsive : concevoir mobile en composition propre (pas un empilement) ; `dvh/svh`, `container queries`, tailles tactiles ≥ 44px.
- CSS moderne : `grid`, `subgrid`, `:has()`, `@property`, `view-transition`, `animation-timeline: scroll()` (vérifier support avant usage).
