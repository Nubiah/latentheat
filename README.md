# Latent Heat

Site de cours (BTS FED/FCA) généré avec [Quartz](https://quartz.jzhao.xyz/), publié sur GitHub Pages.

*« La chaleur invisible qui change l'état des choses. »*

## Structure

- `content/` — les notes de cours (Markdown, syntaxe Obsidian welcome)
- `quartz.config.yaml` — config du site (titre, thème, plugins)
- `.github/workflows/deploy.yml` — build + déploiement automatique à chaque push sur `main`

## Publier une note

Écrire le `.md` dans `content/` (une arbo = une section du site), puis :

```bash
git add content/ && git commit -m "cours: <sujet>" && git push
```

Le site est reconstruit automatiquement (~1 min).

## Setup local

```bash
npm i
npx quartz build --serve   # serveur de dev sur localhost:8080
```
