\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Workshop}[2022-05-05 v0.1.0 LaTeX document class]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		Class Pre-processing
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\baseclass{book}
\catcode`@=11
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
	\edef\@curroptions{\@ptionlist{\@currname.\@currext}}
	\@tempswafalse
	\@tfor\@this:=#2\do{
		\@expandtwoargs\in@{,\@this,}{,\@curroptions,}
		\ifin@ \@tempswatrue \@break@tfor \fi}
	\let\@this\@empty
	\if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{10pt}{{10pt}{10.5pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		Page & Margin Formatting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{2ex}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage[%
	% showframe,% debug
	paperwidth=210mm,
	paperheight=297mm,
% Here I follow ISO page design for spreads.
% Exact values and proportions can be found in memdesign.pdf
%
% w				=	e		+	m		+	s
% paperwidth	=	outer	+	width	+	inner
%
	inner=23mm,% s = w/9
	outer=46mm,% e = 2s
% h				=	t		+	d		+	f
% paperheight	=	top 	+	height	+	bottom
	top=23mm,%	 t = s
	bottom=46mm,% f = 2s
	marginparwidth=35mm,
	marginparsep=5mm
% φ
]{geometry}
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\catcode`@=12
\doublehyphendemerits=10000
\brokenpenalty=10000
\widowpenalty=9999
\clubpenalty=9999
\interfootnotelinepenalty=9999
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		Section Title Formatting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{titlesec}
\titleformat{\chapter}[hang]{\bfseries\huge}{\thechapter}{15pt}{\bf\huge}
\titlespacing{\chapter}{0pt}{0pt}{.5\baselineskip}
\titleclass{\chapter}{straight}
\titleformat{\section}{\bfseries\Large}{\thesection}{15pt}{\bfseries\Large}
\titlespacing{\section}{0pt}{0pt}{.5\baselineskip}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		Font Settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{iftex}
\ifluatex
    \usepackage[no-math]{fontspec}
    % \setmainfont{texgyrepagella}
    \usepackage{libertinus}
    \renewcommand*{\familydefault}{\sfdefault}
    % \usepackage[
    %     math-style=ISO,
    %     bold-style=ISO,
    %     sans-style=upright
    % ]{unicode-math}
    % \setmathfont{libertinusmath-regular.otf}
    \usepackage{polyglossia}
    \setmainlanguage[variant=Australian]{english}
    \usepackage{microtype}
\else
    \PassOptionsToPackage{lining}{ebgaramond}
    \usepackage{ebgaramond-maths}
    \usepackage[T1]{fontenc}
    \usepackage[scaled=.95]{cabin}
    \usepackage[
        var0,
        varl,
        % narrow,
    ]{zi4}
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		Package Imports thereof
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{tikz}

\usepackage{chemfig}
\setchemfig{%
	atom sep = 1.75em,
    stack sep = 0.3em,% dim for chemabove and below
	bond offset = 1.25pt,
	double bond sep = .25em
}
\renewcommand*\printatom[1]{\ensuremath{\mathsf{#1}}}
\usepackage[version=4]{mhchem}
\usepackage{imakeidx}
\makeindex[%
    name=keywords,
    intoc=true,
    title={Index of Keywords},
    columns=1
]
\def\keyword#1{\textbf{#1}\index[keywords]{\MakeLowercase{#1}}}
\usepackage{xcolor}
\usepackage[
    colorlinks=true,
    linkcolor=cmap3,
    citecolor=cmap5,
    urlcolor=cmap2,
    unicode=true
]{hyperref}
\usepackage[centerlast,labelfont={rm, bf}, textfont={rm}]{caption}
\setlength{\captionmargin}{1em}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{\S\,\ref{#1}}
\newcommand{\parref}[1]{\P\,\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\usepackage{multirow}
\usepackage{booktabs}
\usepackage{tcolorbox}
\tcbuselibrary{breakable}
\newcounter{problem}
\setcounter{problem}{0}

\newtcolorbox{problem}[1][]{
    width=\textwidth,
    colback=cmap2!5!white!95!yellow,
    colframe=cmap3!50!cmap5,
    adjusted title={\addtocounter{problem}{1}Problem \thechapter.\theproblem},
    fonttitle=\large,
    % fontupper=\large,
    % fontlower=\large,
    after=\hfill,
    % space to both,
    valign upper=top,
    valign lower=top,
    % leftrule=1.5mm,
    arc=.666em,
    left=2.5mm,
    right=2.5mm
    #1
}