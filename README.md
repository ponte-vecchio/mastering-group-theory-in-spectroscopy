![](https://upload.wikimedia.org/wikipedia/commons/6/69/CC0_button.svg)

# Mastering Group Theory in Spectroscopy

This repository contains the TeX source code for my WIP workbook, known as **“Mastering Group Theory in Spectroscopy”**. The workbook is intended to be a self-contained introduction to group theory, with a focus on its applications in spectroscopy. The workbook is written in LaTeX, and is intended to be compiled with LuaLaTeX or XeLaTeX. Because it is a work in progress, the final PDF will not be deployed (yet). However, the source code is available for anyone to download and compile.

## How to build the workbook

Because this workbook is written with [LaTeX](https://www.latex-project.org) and its version control managed by [Git](https://git-scm.com), appropriate binaries are required to download (known as [cloning](https://git-scm.com/docs/git-clone)), and compile the document.

The following is a simple three step process to clone and compile the workbook:


1. Download and install [Git](https://git-scm.com/downloads) and [LaTeX](https://www.latex-project.org/get/).

2. Open a terminal (or powershell) and clone the repository:
```sh
$ git clone https://github.com/ponte-vecchio/mastering-group-theory-in-spectroscopy.git
```

3. Change directory to the cloned repository:
```sh
$ cd mastering-group-theory-in-spectroscopy
```

4. Compile the workbook:
```sh
$ latexmk -lualatex main.tex
```
### Preview

![diagram](https://github.com/ponte-vecchio/mastering-group-theory-in-spectroscopy/assets/64239070/ab321fed-52bd-47e8-977c-a9ce7b030419)
![problem](https://github.com/ponte-vecchio/mastering-group-theory-in-spectroscopy/assets/64239070/b98f5f4f-c075-4daa-abb2-07ab062c51a4)
![shifts](https://github.com/ponte-vecchio/mastering-group-theory-in-spectroscopy/assets/64239070/ae5a1d33-ecee-4573-86e2-ec6b3ab39529)

## Licence

<!-- CC0 1.0 -->

Education should be free and available for everyone, everywhere, at any time. Thus, this work is licensed under a Creative Commons licence, namely [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/)—meaning you can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission. See [LICENCE](LICENCE) for the full legal code.




