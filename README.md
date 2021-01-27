## Introduction

The goal of this template is to provide a nice-looking book layout, easy to configure and fill in.

Here is an example preview for the table of content, and other main document items:

<p align="center"><img src="https://raw.githubusercontent.com/dhondta/tex-book-template/master/doc/preview-main.png"></p>

Here is an example preview for chapter items, including the chapter heading, summary and discussion pages:

<p align="center"><img src="https://raw.githubusercontent.com/dhondta/tex-book-template/master/doc/preview-chapter.png"></p>

Here is an example preview for appendix items, including the appendix heading with a mini table of content:

<p align="center"><img src="https://raw.githubusercontent.com/dhondta/tex-book-template/master/doc/preview-appendix.png"></p>


## Structure

The template is structured in the following way:

- `main.tex`: This is the main TeX file to be compiled. Here you can include chapters, parts and appendices and also configure some settings (e.g. printable version).
- `appendices`: This folder contains the appendices, one TeX file for each of them, to be included in `main.tex`.
- `chapters`: This folder contains the chapters, one TeX file for each of them, to be included in `main.tex`.
- `figures`: This folder is aimed to contain the figures (that is, the pictures to be captioned that are included in the list of figures).
- `icons`: This folder is aimed to contain icons that are used without captions, e.g. these included with special text boxes (like `tip`).
- `parts`: This folder contains every part other than chapters or appendices (i.e. abstract, foreword, references, acronyms, ...), one TeX file for each of them, to be included in `main.tex`.
- `styles`: This folder contains the available styles. Most of the included one should not be edited.

> This structure follows the same one as for [this master thesis template](https://github.com/dhondta/tex-master-thesis-template).

> This particular template features a style especially designed for publishing at [Lambert Academic Publishing](https://www.lap-publishing.com/), `style/lap-publishing-book.sty`.

## Compilation

The compilation can easilly be configured in [Texmaker](https://en.wikipedia.org/wiki/Texmaker) by defining a *Quick Build Command*:

1. Go to the menu *Options*
2. Select *Configure Texmaker*
3. Go to tab *Quick Build*
4. In the field *User : (...)*, replace the command with:

        pdflatex -synctex=1 -interaction=nonstopmode %.tex|makeindex %.idx -s styles/index.ist|bibtex %.aux|makeglossaries %|pdflatex -synctex=1 -interaction=nonstopmode %.tex|pdflatex -synctex=1 -interaction=nonstopmode %.tex

5. Then click *OK*

When editing the index with [Texmaker](https://en.wikipedia.org/wiki/Texmaker):

1. Open `main.tex`
2. Go to the menu *Options*
3. Select *Define Current Document as "Master Document"*
4. Open `main.idx` for edition
5. Click on *Quick Build* to compile

This will produce `main.pdf` with all the included chapters, parts and appendices.

## Making your book

### Tuning parts

This template includes multiple pre-filled (self-explanatory) part files of the dissertation, whose some are to be adapted and others should not be modified.

Parts that you should adapt:

- `parts/abstract.tex`
- `parts/acknowledgements.tex`
- `parts/acronyms.tex`
- `parts/bibliography.bib`
- `parts/foreword.tex`
- `parts/glossary.tex`

Parts that you should not adapt:

- `parts/index.tex`
- `parts/lof.tex`
- `parts/references.tex`
- `parts/toc.tex`

### Adding chapters

This template has a particular layout for chapters. Each of them starts with a chapter cover page with:

- Above: the chapter title.
- On the left column: an upper and a lower paragraph.
- On the right column: the mini table of content for the chapter.

In LaTeX, this is structured like the following:

```latex
\begin{chaptercover}%
{Chapter title}%
{Left column upper paragraph}%
{Left column lower paragraph}%
{chapter-reference}

Your chapter content.

\end{chaptercover}
```

Once you have written your new chapter in `chapters/my-chapter.tex`, do not forget to include it in `main.tex` (insert a line `\include{chapters/my-chapter}` where relevant).

### Adding appendices

This template also features a particular layout for appendices. As matters separated from the main thread, they do not have cover pages but a mini table of content as well.

In LaTeX, this is structured like the following:

```latex
\begin{appchaptercover}%
{Appendix title}%
{app:appendix-reference}

Your appendix content.

\end{appchaptercover}
```
