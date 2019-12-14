\LoadClass[oneside]{book}
\ProvidesPackage{taructhesis}

\usepackage{lipsum}
\renewcommand\bibname{References}
%Page Margin
\RequirePackage[a4paper, top=25mm, bottom=25mm, left=35mm, right=25mm]{geometry}
\RequirePackage{newtxtext,newtxmath}
% \renewcommand{\normalsize}{\fontsize{11pt}{0pt}\selectfont}
\renewcommand{\normalsize}{\fontsize{11pt}{36.5pt}\selectfont}
%\setlength{\parskip}{11pt}
\usepackage{graphicx}
\usepackage{indentfirst}
\renewcommand{\baselinestretch}{1.25} %1.5 line spacing like MS Word


\usepackage{fancyhdr}
% \pagestyle{fancy}
% \lhead{}\chead{}\rhead{}
% \cfoot{\vspace*{1.5\baselineskip}\thepage}
% \fancypagestyle{abc}
% {
%  \fancyhf{}
%  \fancyfoot[R]{\thepage}
% }
\renewcommand{\headrulewidth}{0pt}
\fancypagestyle{plain}{
 \fancyhf{}
 \fancyfoot[R]{\thepage}
}
\pagestyle{plain}

% table of contents
\usepackage{tocloft}
\usepackage[english]{babel}
% Table of Contents
\addto\captionsenglish{%
 \renewcommand{\contentsname}{Table of Contents}}
\renewcommand{\cfttoctitlefont}{\bfseries\@setfontsize\Huge{16pt}{0pt}}
\setlength{\cftaftertoctitleskip}{11pt}
\setlength{\cftbeforetoctitleskip}{0pt}

\renewcommand{\@tocrmarg}{2.55em plus1fil} %remove toc hyphenation
\renewcommand{\cftchappresnum}{Chapter~}
\renewcommand{\cftfigpresnum}{Figure~}
\renewcommand{\cfttabpresnum}{Table~}
\renewcommand{\cftchapnumwidth}{1.7cm}
\renewcommand{\cftfignumwidth}{2cm}
\renewcommand{\cfttabnumwidth}{2cm}
\renewcommand{\cftdotsep}{0.5}
\renewcommand{\cftchapdotsep}{\cftdotsep} %add dotfill to chapter
\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchapleader}{\normalfont\cftdotfill{\cftchapdotsep}}
\renewcommand{\cftchappagefont}{\normalfont}
\setlength{\cftbeforechapskip}{0pt}
% List of Figures
\renewcommand{\cftloftitlefont}{\bfseries\@setfontsize\Huge{16pt}{0pt}}
\setlength{\cftafterloftitleskip}{11pt}
\setlength{\cftbeforeloftitleskip}{0pt}
\renewcommand{\cftfigindent}{0cm}
% List of Tables
\renewcommand{\cftlottitlefont}{\bfseries\@setfontsize\Huge{16pt}{0pt}}
\setlength{\cftafterlottitleskip}{11pt}
\setlength{\cftbeforelottitleskip}{0pt}
\renewcommand{\cfttabindent}{0cm}
% List of equations
% \newcommand{\listequationsname}{List of Equations}
% \newlistof{myequations}{equ}{\listequationsname}
% \newcommand{\myequations}[1]{%
% \addcontentsline{equ}{myequations}{\protect\numberline{\theequation}#1}\par}


% caption related setup
\usepackage[labelsep=space, skip=0pt]{caption}
\captionsetup[table]{labelsep=space}
\renewcommand \thefigure
{\ifnum \c@chapter>\z@ \thechapter-\fi \@arabic\c@figure}
\renewcommand \thetable
{\ifnum \c@chapter>\z@ \thechapter-\fi \@arabic\c@table}

% equationformat
\renewcommand\theequation
{Equation \ifnum \c@chapter>\z@ \thechapter-\fi \@arabic\c@equation}
\usepackage{mathtools}
\newtagform{noparen}{}{}
\usetagform{noparen}




%define section heading font size
\usepackage{sectsty}
% \chapterfont{\fontsize{16pt}{0pt}\selectfont}
\sectionfont{\fontsize{13pt}{0pt}\selectfont}
\subsectionfont{\fontsize{12pt}{0pt}\selectfont}
\subsubsectionfont{\fontsize{11pt}{0pt}\selectfont}
\newcommand\ChapFont{\@setfontsize\Huge{16pt}{0pt}}

\usepackage{titlesec}
% chapter formatting
\titleformat{\chapter}% reformat chapter headings
[hang]% like section, with number on same line11111112
{\bfseries\ChapFont}% formatting applied to whole
{\chaptertitlename\hfill{} \thechapter}% Chapter number
{0.5em}% space between # and title
{\vspace{0pt}}% formatting applied just to title
[\vspace{11pt}]
\titlespacing{\chapter}{0pt}{0pt}{11pt}
%\titlespacing{\section}{0pt}{11pt}{11pt}
\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}
% spacing after section
\titlespacing{\section}{0pt}{*6}{-\parskip}
\titlespacing{\subsection}{0pt}{*6}{-\parskip}
\titlespacing{\subsubsection}{0pt}{*6}{-\parskip}


\newcommand{\titleone}[1]{\def\@titleone{#1}}
\newcommand{\titletwo}[1]{\def\@titletwo{#1}}
\newcommand{\titlethree}[1]{\def\@titlethree{#1}}
%\newcommand{\author}[1]{\def\@author{#1}}
\newcommand{\regno}[1]{\def\@regno{#1}}
\newcommand{\department}[1]{\def\@department{#1}}
\newcommand{\faculty}[1]{\def\@faculty{#1}}
\newcommand{\school}[1]{\def\@school{#1}}
\newcommand{\location}[1]{\def\@location{#1}}
\newcommand{\acadyear}[1]{\def\@acadyear{#1}}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\newcommand{\supervisorParticular}[1]{\def\@supervisorParticular{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
%\newcommand{\date}[1]{\def\@date{#1}}
\titleone{}
\titletwo{}
\titlethree{}
\regno{}
\department{}
\faculty{Faculty of Engineering and Technology}
\school{Tunku Abdul Rahman University College}
\location{Kuala Lumpur}
\acadyear{}
\supervisor{}
\supervisorParticular{}
\degree{}
\date{}


\newcommand{\coverpage}
{
 \thispagestyle{empty}
 \begin{center}
  \fontsize{16pt}{24pt}\selectfont{
   \@titleone\par
   \@titletwo\par
   \@titlethree\par
   \vfill
   BY\par
   \MakeUppercase\@author\par
   \vfill
   \includegraphics[width=3.82in]{images/taruc_logo}\par
   \vphantom{}
   \MakeUppercase{\@department}\par
   \MakeUppercase{\@faculty}\par
   \MakeUppercase{\@school}\par
   \MakeUppercase{\@location}\par
   \vfill
   \@acadyear
  }
  \pagebreak
 \end{center}

}

\newcommand{\frontpage}
{
 \thispagestyle{empty}
 \setlength{\parindent}{0pt}
 % \fontdimen2\font =3pt
 \fontsize{11pt}{16.5pt}\selectfont{
  \@titleone
  \@titletwo
  \@titlethree\par
  \vfill
  by\par
  \@author\par

  \vfill
  \noindent Supervisor: \hspace{7mm} \@supervisor\par
  \noindent \hphantom{Supervisor:x}\hspace{7mm} \@supervisorParticular
  \vfill
  Project dissertation submitted in partial fulfilment of the requirements for the award of the \par
  \@degree.
  \vfill
  \@department\par
  \@faculty\par
  \@school\par
  \@location\par
  \vfill
  \@acadyear
  \vfill
  Copyright {\textcopyright} 2019 by Tunku Abdul Rahman University College.

  All rights reserved. No part of this dissertation may be reproduced, stored in a retrieval system, or transmitted in any form or by any means without the prior permission of Tunku Abdul Rahman University College.

 }
 \pagebreak
}



\newcommand{\declaration}
{
 \clearpage
 \setcounter{page}{1}
 \chapter*{Declaration}
 \addcontentsline{toc}{chapter}{Declaration}
 ``The project submitted herewith is a result of my own investigations. All information that has been obtained from other sources had been fully acknowledged. I understand that plagiarism constitutes a breach of University College rules and regulations and would be subjected to disciplinary actions''
 \par
 \vphantom{}
 \vphantom{}
 \vphantom{}
 \vphantom{}
 \begin{flushright}
  \begin{tabular}{rr}
   Signature:       & \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\tabularnewline


   Name:            & \@author\hfill{} \tabularnewline


   Registration No: & \@regno\hfill{}\hfill{}\tabularnewline


   Date:            & \@date\hfill{}\hfill{}\tabularnewline
  \end{tabular}
  \par\end{flushright}

 \pagebreak
}




\newcommand{\InsertFrontPages}
{
 \frontmatter
 \coverpage
 \frontpage
 \declaration
 \setlength{\parindent}{1cm}

}

\newcommand{\InsertTOCPages}
{
 \tableofcontents{}
 \addcontentsline{toc}{chapter}{Table of Contents}
 \pagebreak{}

 \listoffigures
 \addcontentsline{toc}{chapter}{List of Figures}

 \pagebreak{}

 \listoftables

 \addcontentsline{toc}{chapter}{List of Tables}

 \pagebreak{}

 \mainmatter
}
