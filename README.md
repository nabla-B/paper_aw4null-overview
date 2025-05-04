## Repository Overview

This repository hosts the source for the **autowerkstatt4null: An Off-Board-Diagnostics Ecosystem for Car-Workshops** overview paper. It contains:

* A `src/` directory with `main.tex` and `preamble.tex`
* An `assets/` folder for images and bibliography files
* A top-level `Makefile` supporting both full and draft builds
* A `README.md` (this file) and any licensing information

## Editor

The designated editor for this paper is **Meihui Huang**.

## Build Instructions

To compile the final PDF:

```bash
make all
```

To compile a fast draft (placeholders for figures, ignores missing graphics):

```bash
make draft
```

The resulting PDF will be placed in the `build/` directory.

## Dependency

The only required dependency is **TeX Live Full**:

On Debian/Ubuntu, install via:

```bash
sudo apt update
sudo apt install texlive-full
```

This pulls in the complete TeX Live distribution, including `latexmk` and all common LaTeX packages.
