---
title: Markdown
subtitle: Wissenschaftliches Schreiben ohne technisches Gedöns
author: Albert Krewinkel
date: 11. November 2022
filters:
  - filters/graphviz.lua
---

# Worum geht's?

::: notes
Markdown als Auszeichnungssprache hat seinen Ursprung in eMails.
Es ist einfach zu lesen und auch einfach zu lernen, denn es hat
eine übersichtliche Zahl von Features. Trotzdem, oder gerade
deshalb, schreiben Leute damit wissenschaftliche Arbeiten.
:::

## Wer ich bin

- hier studiert
- Pandoc-Entwickler
- mag LaTeX

## Markdown

- Auszeichnungssprache
- Leicht zu lesen
- Schnell gelernt


::: notes
- Spiel mit dem englischen Begriff "markup"
- John Gruber and Aaron Swartz
:::

## Beispiel

:::: {.columns}
::: {.column width=50%}
```
Was wir auf _jeden_ Fall machen sollten:

- forschen,
- schreiben,
- H~2~O trinken
- und **das Leben** genießen!
```
:::

::: {.column .fragment width=50%}
Was wir auf *jeden* Fall machen sollten:

- forschen,
- schreiben,
- H~2~O trinken
- und **das Leben** genießen!
:::
::::


# pandoc

::: notes
Der universelle Dokumentenkonverter.
:::

## Dokumentenkonverter

- geschrieben 2006, John MacFarlane
- geschaffen zum Paper schreiben
- unterstützt zahlreiche Formate

## Ausgabeformate

::: {style="columns: 3;"}
- Markdown
- Word docx
- EPUB
- HTML
- JSON
- LaTeX
- MediaWiki

<!-- -->

- LibreOffice ODT
- Emacs org-mode
- reStructuredText
- AsciiDoc
- DocBook
- ConTeXt
- DokuWiki

<!-- -->

- FB2
- Groff
- PDF
- rtf
- TEI simple
- TexInfo, and
- ZimWiki.
:::

## Architektur

``` {.dot}
digraph workflow {
  bgcolor="transparent"
  resources [
    shape=record,
    style=solid,
    label="{Paper|{<f0>Markdown|<f1>Bilder |<f2>Bibliographie}}"];
  configs [shape=record, style=solid,
          label="{Configs|{<f0>CSL |<f1>Vorlage}}"];

  resources -> pandoc;
  configs -> pandoc;
  pandoc -> pandoc [label=filters];
  pandoc -> "Word docx";
  pandoc -> "LaTeX";
  pandoc -> "HTML";
  pandoc -> PDF;
}
```

# Wissenschaft­liches Schreiben

## Tabellen

:::: columns
::: column
``` markdown
| a | b |
|---|---|
| 1 | 2 |
| 3 | 4 |
```
:::

::: column
| a | b |
|---|---|
| 1 | 2 |
| 3 | 4 |
:::
::::

## Abbildungen

:::: columns
::: column
```
![Mandrill](mandrill.jpg){width=70%}
```
:::

::: column
![Mandrill](mandrill.jpg){width=70%}
:::
::::

## Zitationen

::::: columns
:::: {.column width=50%}
``` markdown
Schreibblockade?
Siehe @Upper1974.
```

``` {style="font-size:30%"}
@article {Upper1974,
  author = {Upper, Dennis},
  title = {The unsuccessful self-treatment of a case of “writer's block”},
  journal = {Journal of Applied Behavior Analysis},
  volume = {7}, number = {3},
  doi = {10.1901/jaba.1974.7-497a},
  pages = {497--497},
  year = {1974},
}
```
::::

:::: {.column width=50%}
Schreibblockade?
Siehe @Upper1974.

::: {#refs style="font-size: 50%"}
:::
::::
:::::

## Formeln

:::: columns
::: column
``` markdown
$a^2 + b^2 = c^2$
```
:::

::: column
$a^2 + b^2 = c^2$
:::
::::


# Quarto<br> ![Quarto logo](images/icon-quarto.svg){height=1.5em}<!-- -->

## Pandoc plus

- Notebooks
- Ausführbare Dokumente
- Komplexe Abbildungen
- Querverweise

# JOSS

## Journal of Open Source Software

[joss.theoj.org](https://joss.theoj.org/)

# Danke!

## Links

pandoc
:   [pandoc.org](https://pandoc.org/)

Quarto
:   [quarto.org](https://quarto.org)

JOSS
:   [joss.theoj.org](https://joss.theoj.org/)

pandoc Tipps
:   [fosstodon.org/\@pandoc](https://fosstodon.org/@pandoc)
