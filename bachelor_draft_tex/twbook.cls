%%
%% This is file `twbook.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% twbook.dtx  (with options: `class')
%% 
%% Dies ist ein automatisch generierter File
%% 
%% Copyright (C) 2013 Dr. Andreas Drauschke
%%  <andreas.drauschke@technikum-wien.at>
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{twbook}[2013/03/25 v0.03 Standard LaTeX Dokumenten-Klasse für Dokumente der FH Technikum Wien]


\newcommand{\sprache}{english}
\DeclareOption{german}{\renewcommand*{\sprache}{german}}
\DeclareOption{ngerman}{\renewcommand*{\sprache}{ngerman}}
\DeclareOption{english}{\renewcommand*{\sprache}{english}}

\newcommand{\degreecourse}{TW}
\DeclareOption{TW}{\renewcommand*{\degreecourse}{TW}}
\DeclareOption{BBE}{\renewcommand*{\degreecourse}{BBE}}
\DeclareOption{BEE}{\renewcommand*{\degreecourse}{BEE}}
\DeclareOption{BEL}{\renewcommand*{\degreecourse}{BEL}}
\DeclareOption{BEW}{\renewcommand*{\degreecourse}{BEW}}
\DeclareOption{BIC}{\renewcommand*{\degreecourse}{BIC}}
\DeclareOption{BIF}{\renewcommand*{\degreecourse}{BIF}}
\DeclareOption{BIW}{\renewcommand*{\degreecourse}{BIW}}
\DeclareOption{BMR}{\renewcommand*{\degreecourse}{BMR}}
\DeclareOption{BST}{\renewcommand*{\degreecourse}{BST}}
\DeclareOption{BVU}{\renewcommand*{\degreecourse}{BVU}}
\DeclareOption{BWI}{\renewcommand*{\degreecourse}{BWI}}
\DeclareOption{MBE}{\renewcommand*{\degreecourse}{MBE}}
\DeclareOption{MEE}{\renewcommand*{\degreecourse}{MEE}}
\DeclareOption{MES}{\renewcommand*{\degreecourse}{MES}}
\DeclareOption{MGR}{\renewcommand*{\degreecourse}{MGR}}
\DeclareOption{MGS}{\renewcommand*{\degreecourse}{MGS}}
\DeclareOption{MIC}{\renewcommand*{\degreecourse}{MIC}}
\DeclareOption{MIE}{\renewcommand*{\degreecourse}{MIE}}
\DeclareOption{MIT}{\renewcommand*{\degreecourse}{MIT}}
\DeclareOption{MIW}{\renewcommand*{\degreecourse}{MIW}}
\DeclareOption{MMR}{\renewcommand*{\degreecourse}{MMR}}
\DeclareOption{MSE}{\renewcommand*{\degreecourse}{MSE}}
\DeclareOption{MST}{\renewcommand*{\degreecourse}{MST}}
\DeclareOption{MTE}{\renewcommand*{\degreecourse}{MTE}}
\DeclareOption{MTI}{\renewcommand*{\degreecourse}{MTI}}
\DeclareOption{MTM}{\renewcommand*{\degreecourse}{MTM}}
\DeclareOption{MUT}{\renewcommand*{\degreecourse}{MUT}}
\DeclareOption{MWI}{\renewcommand*{\degreecourse}{MWI}}

\newcommand{\doctype}{}
\DeclareOption{Bachelor}{\renewcommand*{\doctype}{BACHELORARBEIT}}
\DeclareOption{Master}{\renewcommand*{\doctype}{MASTERARBEIT}}
\DeclareOption{Seminar}{\renewcommand*{\doctype}{SEMINARARBEIT}}
\DeclareOption{Praktikum}{\renewcommand*{\doctype}{PRAKTIKUMSBERICHT}}
\DeclareOption{Labor}{\renewcommand*{\doctype}{LABORPROTOKOLL}}

\newcommand{\cover}{PICs/TW}

\ProcessOptions\relax

\LoadClass[a4paper,11pt,twoside=false,headings=normal]{scrbook}
\RequirePackage{color,xcolor}
\RequirePackage{xifthen}
\RequirePackage{ifpdf}
\RequirePackage{wallpaper}
\RequirePackage{palatino}
\RequirePackage{scrpage2}
\RequirePackage{acronym}
\RequirePackage{amsmath,amssymb,amsfonts,amstext}
\RequirePackage[\sprache]{babel}
\RequirePackage{array}
\ifpdf
  \RequirePackage[pdftex]{hyperref}
  \RequirePackage{graphicx}
\else
  \RequirePackage[dvips]{hyperref}
  \RequirePackage[dvips]{graphicx}
\fi
\definecolor{TWgreen}{RGB}{8,140,82}
\definecolor{TWblue}{RGB}{16,132,214}

\hypersetup{colorlinks=true, linkcolor=black, linkbordercolor=white,%
citecolor=black, citebordercolor=white,%
filecolor=black, filebordercolor=white,%
urlcolor=TWblue, urlbordercolor=white}
\urlstyle{sf}

%\renewcommand*{\@noopterr}[1]{%
 %   \PackageWarning{babel}%
  %               {You haven't loaded the option #1\space yet.\MessageBreak%
	%							  Rerun to set the right option.\MessageBreak%
	%							  Sie haben die Option #1\space aktuell nicht geladen.\MessageBreak%
	%								Kompilieren Sie noch einmal um die korrekte Option zu setzen}}


\pagestyle{scrheadings}
\clearscrheadings
\rofoot[\footnotesize\pagemark]{\footnotesize\pagemark}
\renewcommand*{\chapterpagestyle}{scrheadings}

\renewcommand*{\theequation}{\sffamily\arabic{equation}}
\renewcommand*{\thefigure}{\sffamily\small\arabic{figure}}
\renewcommand*{\thetable}{\sffamily\small\arabic{table}}
\setkomafont{caption}{\sffamily\small}
\setkomafont{captionlabel}{\sffamily\small}

\renewcommand*{\extrarowheight}{3pt}
\addtolength{\textheight}{5\baselineskip}
\addtolength{\textwidth}{38pt}
\setlength{\headheight}{1.3\baselineskip}
\renewcommand*{\baselinestretch}{1.21}
\sloppy\tolerance=10000

\ifstr{\doctype}{}
{
  \addtolength{\oddsidemargin}{-33pt}
  \addtolength{\evensidemargin}{-33pt}
  \setkomafont{chapter}{\color{TWblue}\mdseries\Huge}
  \setkomafont{section}{\color{TWblue}\mdseries\huge}
  \setkomafont{subsection}{\color{TWblue}\mdseries\Large}
  \setkomafont{subsubsection}{\bfseries\normalsize}}
{
  \renewcommand*{\cover}{PICs/Arbeiten}
  \addtolength{\oddsidemargin}{-19pt}
  \addtolength{\evensidemargin}{-19pt}
  \setkomafont{chapter}{\mdseries\huge}
  \setkomafont{section}{\mdseries\LARGE}
  \setkomafont{subsection}{\mdseries\Large}
  \setkomafont{subsubsection}{\bfseries\normalsize}}

\renewcommand*\chapter{\par\global\@topnum\z@\@afterindentfalse%
\secdef\@chapter\@schapter}

\ifstr{\sprache}{english}{%
  \ifstr{\doctype}{BACHELORARBEIT}{%
    \renewcommand*{\doctype}{BACHELORTHESIS}}{}
  \ifstr{\doctype}{MASTERARBEIT}{%
    \renewcommand*{\doctype}{MASTERTHESIS}}{}
  \ifstr{\doctype}{SEMINARARBEIT}{%
    \renewcommand*{\doctype}{SEMINAR PAPER}}{}
  \ifstr{\doctype}{PRAKTIKUMSBERICHT}{%
    \renewcommand*{\doctype}{INTERNSHIP REPORT}}{}
  \ifstr{\doctype}{Laborbericht}{%
    \renewcommand*{\doctype}{LABORATORY REPORT}}}{}

\ifstr{\sprache}{german}{%
\ifstr{\degreecourse}{TW}{\renewcommand*{\cover}{PICs/TW}}{}
\ifstr{\degreecourse}{BBE}{\renewcommand*{\cover}{PICs/BBE}%
\renewcommand*{\degreecourse}{Biomedical Engineering}%
\ifstr{\@extratitle}{}{\renewcommand*{\@extratitle}{Biomedizinisches Ingenieurswesen}}{}}{}
  \ifstr{\degreecourse}{BEE}{\renewcommand*{\cover}{PICs/BEE}%
\renewcommand*{\degreecourse}{Urbane Erneuerbare Energietechniken}}{}
\ifstr{\degreecourse}{BEL}{\renewcommand*{\cover}{PICs/BEL}%
\renewcommand*{\degreecourse}{Elektronik}}{}
\ifstr{\degreecourse}{BEW}{\renewcommand*{\cover}{PICs/BEW}%
\renewcommand*{\degreecourse}{Elektronik/Wirtschaft}}{}
\ifstr{\degreecourse}{BIC}{\renewcommand*{\cover}{PICs/BIC}%
\renewcommand*{\degreecourse}{Informations- und %
  Kommunikationssysteme}}{}
\ifstr{\degreecourse}{BIF}{\renewcommand*{\cover}{PICs/BIF}%
\renewcommand*{\degreecourse}{Informatik}}{}
\ifstr{\degreecourse}{BIW}{\renewcommand*{\cover}{PICs/BIW}%
\renewcommand*{\degreecourse}{Internationales %
  Wirtschaftsingenieurwesen}}{}
\ifstr{\degreecourse}{BMR}{\renewcommand*{\cover}{PICs/BMR}%
\renewcommand*{\degreecourse}{Mechatronik/Robotik}}{}
\ifstr{\degreecourse}{BST}{\renewcommand*{\cover}{PICs/BST}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}
\ifstr{\@extratitle}{}{\renewcommand*{\@extratitle}{Sportgerätetechnik}}{}}{}
\ifstr{\degreecourse}{BVU}{\renewcommand*{\cover}{PICs/BVU}%
\renewcommand*{\degreecourse}{Verkehr und Umwelt}}{}
\ifstr{\degreecourse}{BWI}{\renewcommand*{\cover}{PICs/BWI}
\renewcommand*{\degreecourse}{Wirtschaftsinformatik}}{}
\ifstr{\degreecourse}{MBE}{\renewcommand*{\cover}{PICs/MBE_en}%
\renewcommand*{\degreecourse}{Biomedical Engineering Sciences}}{}
\ifstr{\degreecourse}{MEE}{\renewcommand*{\cover}{PICs/MEE}%
\renewcommand*{\degreecourse}{Erneuerbare Urbane Energiesysteme}}{}
\ifstr{\degreecourse}{MES}{\renewcommand*{\cover}{PICs/MES}%
\renewcommand*{\degreecourse}{Embedded Systems}}{}
\ifstr{\degreecourse}{MGR}{\renewcommand*{\cover}{PICs/MGR}%
\renewcommand*{\degreecourse}{Gesundheits- und %
  Rehabilitationstechnik}}{}
\ifstr{\degreecourse}{MGS}{\renewcommand*{\cover}{PICs/MGS}%
\renewcommand*{\degreecourse}{Game Engineering und Simulation}}{}
\ifstr{\degreecourse}{MIC}{\renewcommand*{\cover}{PICs/MIC}%
\renewcommand*{\degreecourse}{Informationsmanagement und %
  Computersicherheit}}{}
\ifstr{\degreecourse}{MIE}{\renewcommand*{\cover}{PICs/MIE}%
\renewcommand*{\degreecourse}{Industrielle Elektronik}}{}
\ifstr{\degreecourse}{MIT}{\renewcommand*{\cover}{PICs/MIT}%
\renewcommand*{\degreecourse}{Intelligent Transport Systems}}{}
\ifstr{\degreecourse}{MIW}{\renewcommand*{\cover}{PICs/MIW}%
\renewcommand*{\degreecourse}{Internationales %
  Wirtschaftsingenieurwesen}}{}
\ifstr{\degreecourse}{MMR}{\renewcommand*{\cover}{PICs/MMR}%
\renewcommand*{\degreecourse}{Mechatronik/Robotik}}{}
\ifstr{\degreecourse}{MSE}{\renewcommand*{\cover}{PICs/MSE}%
\renewcommand*{\degreecourse}{Multimedia und Softwareentwicklung}}{}
\ifstr{\degreecourse}{MST}{\renewcommand*{\cover}{PICs/MST}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\ifstr{\degreecourse}{MTE}{\renewcommand*{\cover}{PICs/MTE}%
\renewcommand*{\degreecourse}{Tissue Engineering and Regenerative %
Medicine}}{}
\ifstr{\degreecourse}{MTI}{\renewcommand*{\cover}{PICs/MTI}%
\renewcommand*{\degreecourse}{Telekommunikation und %
  Internettechnologien}}{}
\ifstr{\degreecourse}{MTM}{\renewcommand*{\cover}{PICs/MTM}%
\renewcommand*{\degreecourse}{Innovations- und %
  Technologiemanagement}}{}
\ifstr{\degreecourse}{MUT}{\renewcommand*{\cover}{PICs/MUT}%
\renewcommand*{\degreecourse}{Technisches Umweltmanagement und %
  Ökotoxikologie}}{}
\ifstr{\degreecourse}{MWI}{\renewcommand*{\cover}{PICs/MWI}%
\renewcommand*{\degreecourse}{Wirtschaftsinformatik}}
\ifstr{\doctype}{}{}{\renewcommand*{\cover}{PICs/Arbeiten}}}{}

\ifstr{\sprache}{english}{%
\ifstr{\degreecourse}{TW}{\renewcommand*{\cover}{PICs/TW}}{}
\ifstr{\degreecourse}{BBE}{\renewcommand*{\cover}{PICs/BBE_en}%
\renewcommand*{\degreecourse}{Biomedical Engineering}}{}
\ifstr{\degreecourse}{BEE}{\renewcommand*{\cover}{PICs/BEE_en}%
\renewcommand*{\degreecourse}{Urban Renewable Energy Technologies}}{}
\ifstr{\degreecourse}{BEL}{\renewcommand*{\cover}{PICs/BEL_en}%
\renewcommand*{\degreecourse}{Electronic Engineering}}{}
\ifstr{\degreecourse}{BEW}{\renewcommand*{\cover}{PICs/BEW_en}%
\renewcommand*{\degreecourse}{Electronics and Business}}{}
\ifstr{\degreecourse}{BIC}{\renewcommand*{\cover}{PICs/BIC_en}%
\renewcommand*{\degreecourse}{Information and Communication Systems %
and Services}}{}
\ifstr{\degreecourse}{BIF}{\renewcommand*{\cover}{PICs/BIF_en}%
\renewcommand*{\degreecourse}{Computer Science}}{}
\ifstr{\degreecourse}{BIW}{\renewcommand*{\cover}{PICs/BIW_en}%
\renewcommand*{\degreecourse}{International Business and %
Engineering}}{}
\ifstr{\degreecourse}{BMR}{\renewcommand*{\cover}{PICs/BMR_en}%
\renewcommand*{\degreecourse}{Mechatronics/Robotics}}{}
\ifstr{\degreecourse}{BST}{\renewcommand*{\cover}{PICs/BST_en}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\ifstr{\degreecourse}{BVU}{\renewcommand*{\cover}{PICs/BVU_en}%
\renewcommand*{\degreecourse}{Transport and Environment}}{}
\ifstr{\degreecourse}{BWI}{\renewcommand*{\cover}{PICs/BWI_en}%
\renewcommand*{\degreecourse}{Business Informatics}}{}
\ifstr{\degreecourse}{MBE}{\renewcommand*{\cover}{PICs/MBE_en}%
\renewcommand*{\degreecourse}{Biomedical Engineering Sciences}}{}
\ifstr{\degreecourse}{MEE}{\renewcommand*{\cover}{PICs/MEE_en}%
\renewcommand*{\degreecourse}{Renewable Urban Energy Systems}}{}
\ifstr{\degreecourse}{MES}{\renewcommand*{\cover}{PICs/MES_en}%
\renewcommand*{\degreecourse}{Embedded Systems}}{}
\ifstr{\degreecourse}{MGR}{\renewcommand*{\cover}{PICs/MGR_en}%
\renewcommand*{\degreecourse}{Healthcare and Rehabilitation%
  Technology}}{}
\ifstr{\degreecourse}{MGS}{\renewcommand*{\cover}{PICs/MGS_en}%
\renewcommand*{\degreecourse}{Game Engineering and Simulation %
  Technology}}{}
\ifstr{\degreecourse}{MIC}{\renewcommand*{\cover}{PICs/MIC_en}%
\renewcommand*{\degreecourse}{Information Management and IT %
  Security}}{}
\ifstr{\degreecourse}{MIE}{\renewcommand*{\cover}{PICs/MIE_en}%
\renewcommand*{\degreecourse}{Industrial Electronis}}{}
\ifstr{\degreecourse}{MIT}{\renewcommand*{\cover}{PICs/MIT_en}%
\renewcommand*{\degreecourse}{Intelligent Transport Systems}}{}
\ifstr{\degreecourse}{MIW}{\renewcommand*{\cover}{PICs/MIW_en}%
\renewcommand*{\degreecourse}{International Business and %
Engineering}}{}
\ifstr{\degreecourse}{NMR}{\renewcommand*{\cover}{PICs/MMR_en}%
\renewcommand*{\degreecourse}{Mechatronics/Robotics}}{}
\ifstr{\degreecourse}{MSE}{\renewcommand*{\cover}{PICs/MSE_en}%
\renewcommand*{\degreecourse}{Multimedia and Software Engineering}}{}
\ifstr{\degreecourse}{MST}{\renewcommand*{\cover}{PICs/MST_en}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\ifstr{\degreecourse}{MTE}{\renewcommand*{\cover}{PICs/MTE_en}%
\renewcommand*{\degreecourse}{Tissue Engineering and Regenerative %
Medicine}}{}
\ifstr{\degreecourse}{MTI}{\renewcommand*{\cover}{PICs/MTI_en}%
\renewcommand*{\degreecourse}{Telecommunications- and Internet %
  Technologies}}{}
\ifstr{\degreecourse}{MTM}{\renewcommand*{\cover}{PICs/MTM_en}%
\renewcommand*{\degreecourse}{Innovation and Technology Management}}{}
\ifstr{\degreecourse}{MUT}{\renewcommand*{\cover}{PICs/MUT_en}%
\renewcommand*{\degreecourse}{Environmental Management and %
  Ecotoxicolgy}}{}
\ifstr{\degreecourse}{MWI}{\renewcommand*{\cover}{PICs/MWI_en}%
\renewcommand*{\degreecourse}{Information Systems Management}}{}
\ifstr{\doctype}{}{}{\renewcommand*{\cover}{PICs/Arbeiten}}}{}

\newcommand*{\@supervisor}{}
\newcommand{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\@studentnumber}{}
\newcommand{\studentnumber}[1]{\gdef\@studentnumber{#1}}
\newcommand*{\@place}{}
\newcommand{\place}[1]{\gdef\@place{#1}}
\newcommand*{\@kurzfassung}{}
\newcommand{\kurzfassung}[1]{\gdef\@kurzfassung{#1}}
\newcommand*{\@schlagworte}{}
\newcommand{\schlagworte}[1]{\gdef\@schlagworte{#1}}
\newcommand*{\@outline}{}
\newcommand{\outline}[1]{\gdef\@outline{#1}}
\newcommand*{\@keywords}{}
\newcommand{\keywords}[1]{\gdef\@keywords{#1}}
\newcommand*{\@acknowledgements}{}
\newcommand{\acknowledgements}[1]{\gdef\@acknowledgements{#1}}
\renewcommand*\maketitle[1][1]{%
  \sffamily
\begin{titlepage}
\pagestyle{empty}
  \ThisTileWallPaper{\paperwidth}{\paperheight}{\cover}

\ifstr{\doctype}{}
{
\color{TWblue}
\null\vspace{451pt}
\setcounter{page}{-9}

\hspace*{-26pt}\begin{minipage}{1.15\linewidth}
  \huge\sffamily \scalebox{1.75}{\@title}
\end{minipage}\vspace{23pt}

\hspace*{-24.75pt}\begin{minipage}{1.15\linewidth}
  \huge\sffamily \scalebox{1.25}{\@extratitle}
\end{minipage}\vspace{47pt}
\setcounter{page}{0}}
{
  \color{white}
  \null\vspace{8pt}
  \setcounter{page}{-9}

\hspace*{-30pt}\scalebox{1.85}{\sffamily\textbf\doctype}
\vspace{17pt}

\hspace*{-34pt}\scalebox{1.5}{%
  \ifstr{\degreecourse}{Technisches Umweltmanagement und
    Ökotoxikologie}
  {
    \begin{minipage}{0.63\linewidth}
      \ifstr{\sprache}{german}{\textbf{Im Studiengang}}{\textbf{In}}
      \textbf{\degreecourse}
    \end{minipage}\vspace{5pt}}
  {
    \begin{minipage}{0.75\linewidth}
      \ifstr{\sprache}{german}{\textbf{Im Studiengang}}{\textbf{In}}
      \textbf{\degreecourse}\vspace{5pt}
    \end{minipage}}}

\ifstr{\degreecourse}{Biomedical Engineering}{%
  \hspace*{102.5pt}\scalebox{1.3}{\@extratitle}
  \vspace{54.7pt}}
{
  \ifstr{\degreecourse}{Sports Equipment Technology}{%
    \hspace*{102.5pt}\scalebox{1.3}{Sportgerätetechnik}
    \vspace{54.7pt}}{
    \vspace{76pt}}}

\hspace*{-30pt}\begin{minipage}{1.1\linewidth}
  \huge\bfseries\sffamily \@title
\end{minipage}\vspace{47pt}

\hspace*{-30pt}\Large\bfseries
\ifstr{\sprache}{german}{Ausgeführt von~}{By~}\@author

\hspace*{-30pt}\Large\bfseries
\ifstr{\sprache}{german}{Personnkennzahl:~}{Student Number:~}
  \@studentnumber\vspace{0.9\baselineskip}

\hspace*{-30pt}\Large\bfseries
\ifstr{\sprache}{german}{BegutachterIn:}{Supervisor:~}
  \@supervisor\vspace{0.8\baselineskip}

\hspace*{-30pt}\Large\bfseries\@place
\ifstr{\sprache}{german}{, den~}{,~} \today

\clearpage
\color{black}\normalsize\mdseries
\ifstr{\doctype}{BACHELORARBEIT}{
  \chapter*{Eidesstattliche Erklärung}
    \glqq Ich erkläre hiermit an Eides statt, dass ich die
      vorliegende Arbeit selbstständig angefertigt habe. Die aus
      fremden Quellen direkt oder indirekt übernommenen Gedanken sind
      als solche kenntlich gemacht. Die Arbeit wurde bisher weder in
      gleicher noch in ähnlicher Form einer anderen Prüfungsbehörde
      vorgelegt und auch noch nicht veröffentlicht. Ich versichere,
      dass die abgegebene Version jener im Uploadtool
      entspricht.''\vspace{4\baselineskip}

  \noindent Ort, Datum\hspace{0.4\linewidth}Unterschrift
 \ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Danksagung}\@acknowledgements
\fi

\clearpage
\setcounter{tocdepth}{1}
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{


\ifstr{\doctype}{MASTERARBEIT}{
  \chapter*{Eidesstattliche Erklärung}
    \glqq Ich erkläre hiermit an Eides statt, dass ich die
      vorliegende Arbeit selbstständig angefertigt habe. Die aus
      fremden Quellen direkt oder indirekt übernommenen Gedanken sind
      als solche kenntlich gemacht. Die Arbeit wurde bisher weder in
      gleicher noch in ähnlicher Form einer anderen Prüfungsbehörde
      vorgelegt und auch noch nicht veröffentlicht. Ich versichere,
      dass die abgegebene Version jener im Uploadtool
      entspricht.''\vspace{4\baselineskip}

  \noindent Ort, Datum\hspace{0.4\linewidth}Unterschrift
\ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Danksagung}\@acknowledgements
\fi

\clearpage
\setcounter{tocdepth}{1}
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{


\ifstr{\doctype}{BACHELORTHESIS}{
  \chapter*{Declaration}
    ``I confirm that this paper is entirely my own work. All sources
      and quotations have been fully acknowledged in the appropriate
      places with adequate footnotes and citations. Quotations have been
      properly acknowledged and marked with appropriate punctuation. The
      works consulted are listed in the bibliography. This paper has not
      been submitted to another examination panel in the same or a
      similar form, and has not been published. I declare that the
      present paper is identical to the version
      uploaded.\grqq\vspace{4\baselineskip}

  \noindent Place, Date\hspace{0.4\linewidth}Signature
\ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Acknowledgements}\@acknowledgements
\fi

\clearpage
\setcounter{tocdepth}{1}
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{


\ifstr{\doctype}{MASTERTHESIS}{
  \chapter*{Declaration}
    ``I confirm that this paper is entirely my own work. All sources
      and quotations have been fully acknowledged in the appropriate
      places with adequate footnotes and citations. Quotations have been
      properly acknowledged and marked with appropriate punctuation. The
      works consulted are listed in the bibliography. This paper has not
      been submitted to another examination panel in the same or a
      similar form, and has not been published. I declare that the
      present paper is identical to the version
      uploaded.\grqq\vspace{4\baselineskip}

  \noindent Place, Date\hspace{0.4\linewidth}Signature
  \ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Acknowledgements}\@acknowledgements
\fi

\clearpage
\setcounter{tocdepth}{1}
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{

\clearpage
\setcounter{tocdepth}{1}
\tableofcontents

    \clearpage
    \setcounter{page}{1}}}}}}
  \end{titlepage}
 }

\ifstr{\doctype}{}
{
  \renewcommand*{\labelitemi}{
    \huge\raisebox{0.2ex}{$\centerdot$}\hspace{-5pt}}
  \renewcommand*{\labelitemii}{
    \huge\raisebox{-0.15ex}{-}\hspace{-5pt}}
  \renewcommand*{\labelitemiii}{
    \LARGE\raisebox{0.3ex}{$\centerdot$}\hspace{-5pt}}
}{}
\endinput
%%
%% End of file `twbook.cls'.
