<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->
# Table of Contents

* [About The Project](#about-the-project)
* [Built With](#built-with)
* [Getting Started](#getting-started)
    * [Prerequisites](#prerequisites)
* [Usage](#usage)

<!-- ABOUT THE PROJECT -->
# About The Project



# Built With

* [Latex](https://www.latex-project.org/)
* Latex packages
    * Page Layout
        * [geometry](https://www.ctan.org/pkg/geometry) provides an easy and flexible user interface to customize page layout, implementing auto-centering and auto-balancing mechanisms so that the users have only to give the least description for the page layout. For example, if you want to set each margin 2cm without header space, what you need is just `\usepackage[margin=2cm,nohead]{geometry}`.
        * [titlesec](https://www.ctan.org/pkg/titlesec) providing an interface to sectioning commands for selection from various title styles. E.g., marginal titles and to change the font of all headings with a single command, also providing simple one-step page styles. Also includes a package to change the page styles when there are floats in a page. You may assign headers/footers to individual floats, too.
        * [atbegshi](https://www.ctan.org/pkg/atbegshi) providing various commands to be executed before a `\shipout` command. It makes use of e-TEX’s facilities if they are available.
    * Draw
        * [tikz](https://www.ctan.org/pkg/tikz)
    * Text Formatting
        * [xunicode](https://www.ctan.org/pkg/xunicode) supports XETEX’s (and other putative future similar engines’) need for Unicode characters, in a similar way to what the fontenc does for 8-bit (and the like) fonts: convert accent-glyph sequence to a single Unicode character for output.
        * [montserrat](https://www.ctan.org/pkg/montserrat) is a geometric sans-serif typeface designed by Julieta Ulanovsky. It is provided in a total of nine different weights, each having eight figure styles and small caps in both upright and italic shapes.
        * [xcolor](https://www.ctan.org/pkg/xcolor) provides easy driver-independent access to several kinds of colors, tints, shades, tones, and mixes of arbitrary colors by means of color expressions like `color{red!50!green!20!blue}`.
        * [currency](https://www.ctan.org/tex-archive/macros/latex/contrib/currency) facilitates the formatting of currencies (amounts and units). It is based on the siunitx package for printing numbers. For instance, this code in the preamble defines a EUR monetary unit `\DefineCurrency{EUR}{name={euro},plural={euros},symbol={\euro},iso={EUR},kind=iso,base=2}` that will be used later by `\dEUR{123} or \dEUR[kind=plural]{123}`.
        * [arydshln](https://www.ctan.org/pkg/arydshln) is to draw dash-lines in array/tabular environments. Horizontal lines are drawn by `\hdashline` and `\cdashline` while vertical ones can be specified as a part of the preamble using `:`. The shape of dash-lines may be controlled through style parameters or optional arguments.
        * [fontawesome5](https://www.ctan.org/pkg/fontawesome5) provides LATEX support for the included “Font Awesome 5 Free” icon set. These icons were designed by [Fort Awesome](https://fontawesome.com/) and released under the SIL OFL 1.1 license.
        * [hyperref](https://www.ctan.org/pkg/hyperref) is used to handle cross-referencing commands in LATEX to produce hypertext links in the document.
    * Text positionning
        * [ragged2e](https://www.ctan.org/pkg/ragged2e) defines new commands `\Centering`, `\RaggedLeft`, and `\RaggedRight` and new environments Center, FlushLeft, and FlushRight, which set ragged text and are easily configurable to allow hyphenation
        * [longfbox](https://www.ctan.org/pkg/longfbox) provides framed boxes that can be customized using standard CSS attributes.
        * [enumitem](https://www.ctan.org/pkg/enumitem) provides user control over the layout of the three basic list environments: enumerate, itemize and description.
    * Tabular
        * [spreadtab](https://www.ctan.org/pkg/spreadtab) allows the user to construct tables in a manner similar to a spreadsheet. The cells of a table have row and column indices and these can be used in formulas to generate values in other cells.
        * [hhline](https://www.ctan.org/pkg/hhline) The command `\hhline` produces a line like `\hline`, or a double line like `\hline\hline`, except for its interaction with vertical lines. The command takes a preamble (rather like the preamble of a tabular environment), and this specifies whether there are to be one or two horizontal lines, and what happens when the horizontal line meets a vertical one.
    * Internationalisation
        * [polyglossia](https://www.ctan.org/pkg/polyglossia) provides a complete Babel replacement for users of LuaLATEX and XELATEX; it relies on the fontspec package, version 2.0 at least.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# Getting Started

## Prerequisites

* **Linux**: apt-get install pandoc texlive-xetex lmodern texlive-fonts-recommended texlive-fonts-extra texlive-science
* **MacOS**: brew install texlive pandoc

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# Usage

Copy the yaml template for a new invoice (let us suppose the yaml template is `example.yml`). Modify it appropriatelly and run:

```bash
make with yml=example.yml
```

which outputs `example.pdf`

<p align="right">(<a href="#readme-top">back to top</a>)</p>
