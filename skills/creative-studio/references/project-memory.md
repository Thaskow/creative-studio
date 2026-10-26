# Mémoire de design projet

Fichier : `<repo>/.claude/design-memory.md` (court, ≤ 60 lignes, versionner seulement si l'utilisateur le veut). Lu au début de STANDARD/DEEP, mis à jour à la fin. Ne jamais y mettre de secrets.

## Modèle
```
# Design memory — <projet>
Stack : <framework, versions clés, lib UI, lib 3D/motion existantes>
Concept validé : <1-3 lignes + date> · direction retenue : A|B|C
Tokens : couleurs, typo, rayons, espacements (ou chemin du fichier)
Motion : easings, durées, signature
3D/shader : où oui / où non, budget perf, fallbacks
Références retenues : source → principe → licence
Décisions rejetées : <pourquoi> (évite de les reproposer)
Mesures : <date, appareil, LCP/FPS…>
```
Réutiliser les décisions validées ; ne pas relancer d'exploration si le concept existe sauf demande explicite.
