# Minimal TinyTex Docker Image

Dockerfile for a lightweight and easily configurable [TinyTex](https://yihui.org/tinytex/) installation, that is good enough for basic LaTeX usage e.g. resume.

### Build using Docker

```sh
docker build -t latex .
```

### Create pdf file from a .tex

```sh
docker run --rm -i -v "$PWD":/data latex pdflatex resume.tex
```

#### Search for packages

If your .tex file fails to generate, with an error '\*.sty not found', just locate what package contains that .sty and add it to the Dockerfile.

```sh
tlmgr search --global --file cfr-lm.sty
```

This way your tinytex installation will contain only the packages you may need.

It works great with the [VSCode Latex Extension](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).

Just add below to settings.json

```json
  "latex-workshop.docker.image.latex": "latex",
  "latex-workshop.docker.enabled": true,
```
