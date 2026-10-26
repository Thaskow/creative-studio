# 🎨 Creative Studio pour Claude Code

> Transformez Claude Code en studio de création web : sites originaux, applications soignées, dashboards efficaces et expériences 3D, **sans que la créativité dégrade l'expérience**.

16 Skills + 3 subagents prêts à installer. *(English summary at the bottom.)*

## ✨ Ce que ça fait

- **Évite le design générique** : direction artistique, signature visuelle, 3 pistes comparées avant de coder.
- **Choisit la bonne techno** : CSS → SVG → Canvas → Three.js/WebGL → WebGPU, jamais de 3D « pour faire joli ».
- **Adapte l'ambition au contexte** : marketing immersif, espace utilisateur, back-office.
- **Vérifie dans un vrai navigateur**, mesure les performances, prévoit des fallbacks et l'accessibilité.
- **Économe en tokens** : instructions courtes, références chargées seulement quand nécessaire.

## 🚀 Installation (2 minutes)

Prérequis : [Claude Code](https://code.claude.com) installé.

```bash
git clone https://github.com/Thaskow/creative-studio.git
cd creative-studio
./install.sh          # macOS / Linux / Git Bash
```

Windows PowerShell :

```powershell
.\install.ps1
```

Les scripts copient `skills/` dans `~/.claude/skills/` et `agents/` dans `~/.claude/agents/` (sans écraser sans demander). Relancez ensuite Claude Code. Pour un seul projet, copiez les dossiers dans `mon-projet/.claude/` à la place.

**Vérifier :** tapez `/` dans Claude Code et cherchez `creative-studio`.

## 🦄 Pour des résultats vraiment uniques

`concept-lab` empêche le « look IA par défaut » :

1. **Ancrage** dans le produit réel (objet, geste, matière, vocabulaire, tension).
2. **3 concepts divergents** par des routes différentes (métaphore du domaine, contrainte forte, tension inversée, emprunt lointain, donnée comme matière).
3. **Contrôle de distinctivité** : 8 critères notés /2, seuil 11/16, liste d'empreintes génériques à éviter (`anti-defaults.md`), test « page blanche ».
4. **Interfaces sur demande** : pour une tâche, le paradigme d'interaction qu'elle appelle (canevas manipulable, timeline, superposition, file de triage clavier…) plutôt que formulaire + tableau.
5. **Registre inter-projets** (`~/.claude/creative-studio-log.md`) : pas deux fois la même signature ou paire de polices.

```text
/concept-lab
Site pour <produit>. Propose 3 concepts réellement différents, note-les,
recommande-en un. Ne modifie aucun fichier.
```

## 🧭 Démarrage rapide

```text
/creative-studio Mode STANDARD.
Crée une landing page premium pour mon projet.
```

Ou simplement : « Améliore le design de cette page, avec une vraie identité visuelle. » (le déclenchement automatique n'est pas garanti : pour une refonte importante, préférez `/creative-studio`).

### Les 3 modes

| Mode | Pour | Ce qui se passe |
|---|---|---|
| **LIGHT** | bouton, espacement, hover | modification ciblée, rien d'autre |
| **STANDARD** | section, composant, page | concept court → implémentation → vérification visuelle |
| **DEEP** | refonte, expérience immersive | recherche → 3 directions → validation → implémentation → audits |

Sans mode précisé, Claude en choisit un et vous l'annonce.

### Les 3 contextes (détectés automatiquement)

| Contexte | Priorité | Skills principaux |
|---|---|---|
| **Marketing / immersif** | identité, storytelling, mouvement | creative-director, design-inspiration, creative-frontend, immersive-motion (+ 3D, shaders si utile) |
| **Produit / espace utilisateur** | ergonomie, personnalisation | user-experience-designer, creative-frontend, ux-auditor |
| **Admin / back-office** | efficacité, lisibilité | dashboard-architect, creative-frontend, ux-auditor |

La 3D et les effets expérimentaux sont **toujours optionnels**.

## 🧰 Les Skills

| Skill | Rôle |
|---|---|
| `creative-studio` | Orchestrateur : modes et routage |
| `concept-lab` | **Moteur d'unicité** : concepts divergents, score de distinctivité, interfaces sur mesure |
| `creative-director` | Direction artistique, concepts A/B/C |
| `design-inspiration` | Références (Awwwards, Godly, Codrops…), licences |
| `creative-frontend` | Implémentation dans votre stack (Vue/Nuxt, React/Next…) |
| `component-curator` | Réutiliser, adapter ou créer un composant |
| `interactive-storytelling` | Parcours narratifs reliés par un fil visuel |
| `threejs-experience` | Scènes 3D, caméra, GLTF, cycle de vie GPU |
| `shader-lab` | GLSL / WGSL / TSL, effets GPU |
| `immersive-motion` | GSAP, scroll, transitions, accessibilité |
| `graphics-performance` | Mesure et optimisation, dégradation progressive |
| `dashboard-architect` | Admin : tables, filtres, permissions, raccourcis |
| `user-experience-designer` | Profils, paramètres, onboarding, confidentialité |
| `data-visualization` | Graphiques : SVG / D3 / Canvas / WebGL |
| `ux-auditor` | Audit ergonomique |
| `visual-qa` | Tests visuels dans le navigateur |

Chaque skill s'invoque seul : `/threejs-experience`, `/shader-lab`, etc.

### Subagents (critiques indépendantes, lecture seule)

`art-director-reviewer` (identité), `ux-performance-reviewer` (UX, accessibilité, perf), `immersive-experience-reviewer` (scènes 3D). Lancés selon la tâche, pas systématiquement.

## 💬 Exemples de prompts

**Homepage immersive**
```text
/creative-studio Mode DEEP.
Crée une homepage premium : typographie expressive, compositions
asymétriques, micro-interactions. Étudie des références sur Awwwards.
Utilise Three.js uniquement si la 3D améliore vraiment la présentation.
Vérifie le rendu desktop et mobile.
```

**Refonte graphique sans toucher au métier**
```text
/creative-studio Mode DEEP.
Refonte exclusivement graphique. Conserve fonctionnalités, permissions,
données, routes et logique métier. Vérifie l'absence de régression.
```

**Explorer sans modifier**
```text
/creative-director
Propose trois directions artistiques réellement différentes pour cette
page (concept, typo, couleurs, interactions, opportunités 3D).
Ne modifie aucun fichier.
```

**Objet 3D interactif**
```text
/threejs-experience
Section avec un objet 3D qui réagit doucement à la souris, fluide sur
mobile, respectant prefers-reduced-motion, avec un fallback si la 3D échoue.
```

**Back-office**
```text
/dashboard-architect
Modernise l'administration : tableaux, filtres, actions rapides,
raccourcis clavier, états de chargement. Aucun effet 3D décoratif.
Conserve toutes les fonctions métier.
```

**Espace utilisateur**
```text
/user-experience-designer
Modernise profil, paramètres, historique, favoris et états vides,
avec une identité cohérente. Pas de complexité inutile.
```

**Statistiques**
```text
/data-visualization
Améliore ces statistiques : radar, comparaisons, séries temporelles.
Choisis SVG, Canvas ou DOM selon le besoin ; pas de 3D inutile.
```

**Audit sans modification**
```text
/ux-auditor
Analyse cette interface sans modifier le code. Classe les problèmes par
gravité, impact et effort, puis propose un plan priorisé.
```

**Vérification visuelle**
```text
/visual-qa
Vérifie desktop, tablette et mobile : alignements, débordements,
interactions, console. Indique précisément ce qui a été testé.
```

Un exemple complet (plateforme d'analyse d'un jeu compétitif) est dans [`skills/creative-studio/references/case-gaming-platform.md`](skills/creative-studio/references/case-gaming-platform.md).

## 🔁 Workflow conseillé pour une grosse refonte

1. `/creative-studio Mode DEEP. Propose trois directions, ne modifie aucun fichier.`
2. Choisissez, puis : `/creative-studio Mode DEEP. Implémente la direction retenue en préservant les fonctionnalités.`
3. `/visual-qa` : vérification et corrections.
4. `/creative-studio` : revue finale, uniquement les améliorations à vrai impact.

Travaillez sur une branche Git dédiée pour les refontes risquées.

## ⚙️ Activer automatiquement (optionnel)

Ajoutez dans votre `CLAUDE.md` (projet ou `~/.claude/CLAUDE.md`) :

```md
## Creative Studio
Pour toute création ou refonte UI/UX importante, utilise le workflow Creative Studio.
Petits changements : LIGHT · pages/composants : STANDARD · refontes : DEEP.
3D uniquement si pertinente. Préserve les fonctionnalités et le design system existants.
Vérifie visuellement quand les outils sont disponibles.
```

## 🔎 Dépannage

Le skill n'apparaît pas ? Vérifiez : présence de `SKILL.md` dans `~/.claude/skills/<nom>/`, nom du dossier = `name:` du frontmatter, YAML valide, puis redémarrez Claude Code.

## 🧪 Validation visuelle

Les skills utilisent l'outil navigateur disponible (extension [Claude in Chrome](https://code.claude.com/docs/en/chrome) par exemple). [Playwright](https://playwright.dev) n'est pas requis ; ajoutez-le dans un projet si vous voulez des tests répétables.

## 💡 Bonnes pratiques

LIGHT pour le mineur, DEEP seulement quand c'est justifié · réutilisez vos composants · pas de recherche d'inspiration systématique · ne convoquez pas tous les subagents · gardez les détails dans les skills, pas dans `CLAUDE.md`.

## ⚠️ Limites

- Le déclenchement automatique des skills dépend de leurs descriptions : non garanti.
- Les versions d'API (Three.js, TSL, WebGPU, GSAP) et les licences des sources sont à revérifier au moment d'utiliser.
- Aucun FPS ni score n'est annoncé sans mesure ; les tests sur appareil mobile réel restent manuels.

## 📚 Documentation

[Skills](https://code.claude.com/docs/en/skills) · [Subagents](https://code.claude.com/docs/en/sub-agents) · [Memory / CLAUDE.md](https://code.claude.com/docs/en/memory) · [Three.js](https://threejs.org/docs/) · [TresJS](https://docs.tresjs.org/) · [GSAP](https://gsap.com/docs/v3/) · [Playwright](https://playwright.dev/docs/intro)

## 🤝 Contribuer

Issues et PR bienvenues. Gardez les `SKILL.md` courts : le détail va dans `skills/creative-studio/references/`.

## 📄 Licence

[MIT](LICENSE)

---

## 🇬🇧 English summary

Creative Studio adds 16 skills and 3 review subagents to Claude Code for building distinctive, performant, accessible web UIs: marketing/immersive sites (Three.js, shaders, GSAP), product/user spaces, and admin dashboards, with LIGHT/STANDARD/DEEP modes. Install with `./install.sh` (or `install.ps1`), restart Claude Code, then run `/creative-studio Mode STANDARD. <your request>`. Skills are written in French; Claude follows them regardless of your prompt language.

> **Principe fondamental :** une interface exceptionnelle n'est pas celle qui utilise le plus d'effets, mais celle qui combine identité forte, interactions pertinentes et excellente expérience utilisateur.
