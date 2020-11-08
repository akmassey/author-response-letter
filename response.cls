% An article class for author response to reviewer comment.
% Copyright (C) 2017 Martin Schroen
% Modifications Copyright (C) 2020 Kaishuo Zhang
% Additional Modifications Copyright (C) 2020 Aaron Massey
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{response}[2020/08/04 Author response to reviewer comment class]
\LoadClass{article}

\RequirePackage[includeheadfoot,top=20mm, bottom=20mm, footskip=2.5cm]{geometry}

% Typography
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{microtype}

% Fonts
\RequirePackage{mathpazo}
\RequirePackage[scaled]{beramono}
\RequirePackage{amssymb,amsmath}

% For fancy shadow boxes
\RequirePackage[many]{tcolorbox}
\usetikzlibrary{shadows}

\newtcolorbox{shadedbox}{
  drop shadow southeast,
  breakable,
  enhanced jigsaw,
  colback=white,
}

% Misc
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{soul} % Highlight using \hl{}

% Table
\RequirePackage{caption}
\captionsetup[table]{skip=10pt} % enlarge spacing between caption and table

% Section styles
\RequirePackage{titlesec}
\titleformat{\section}{\normalfont\large}{\makebox[0pt][r]{\bf \thesection.\hspace{4mm}}}{0em}{\bfseries}
\titleformat{\subsection}{\normalfont}{\makebox[0pt][r]{\bf \thesubsection.\hspace{4mm}}}{0em}{\bfseries}
\titlespacing{\subsection}{0em}{1em}{-0.3em}% left before after

% Paragraph styles
\setlength{\parskip}{0.6\baselineskip}%
\setlength{\parindent}{0pt}%

% Quotation styles
\RequirePackage{mdframed}
\renewmdenv[leftmargin=0.4em, rightmargin=0.4em%
innerleftmargin=0.6em,innerrightmargin=0.6em]{quote}

% Shortcuts
%% Let textbf be both, bold and italic
%\DeclareTextFontCommand{\textbf}{\bfseries\em}


% Environment for reviewer comments
\newcounter{reviewercomment}[section]
\newenvironment{reviewer}[1][]{\refstepcounter{reviewercomment}\par\medskip
   \noindent \textbf{Reviewer Comment~\thereviewercomment. #1}
 \rmfamily\begin{shadedbox}}{\end{shadedbox}\medskip}

% Environment for responses to reviewer comments
\newcounter{responsecomment}[section]
\newenvironment{response}[1][]{\refstepcounter{responsecomment}\par\medskip
   \noindent \textbf{Response to Reviewer Comment~\theresponsecomment. #1}
 \rmfamily}{\medskip}

%%%
%DIF PREAMBLE EXTENSION ADDED BY LATEXDIFF
%DIF UNDERLINE PREAMBLE %DIF PREAMBLE
\RequirePackage[normalem]{ulem} %DIF PREAMBLE
\RequirePackage{xcolor} %DIF PREAMBLE
\providecommand{\DIFadd}[1]{{\protect\color{blue}\uwave{#1}}} %DIF PREAMBLE
\providecommand{\DIFdel}[1]{{\protect\color{red}\sout{#1}}}                      %DIF PREAMBLE
%DIF SAFE PREAMBLE %DIF PREAMBLE
\providecommand{\DIFaddbegin}{} %DIF PREAMBLE
\providecommand{\DIFaddend}{} %DIF PREAMBLE
\providecommand{\DIFdelbegin}{} %DIF PREAMBLE
\providecommand{\DIFdelend}{} %DIF PREAMBLE
%DIF FLOATSAFE PREAMBLE %DIF PREAMBLE
\providecommand{\DIFaddFL}[1]{\DIFadd{#1}} %DIF PREAMBLE
\providecommand{\DIFdelFL}[1]{\DIFdel{#1}} %DIF PREAMBLE
\providecommand{\DIFaddbeginFL}{} %DIF PREAMBLE
\providecommand{\DIFaddendFL}{} %DIF PREAMBLE
\providecommand{\DIFdelbeginFL}{} %DIF PREAMBLE
\providecommand{\DIFdelendFL}{} %DIF PREAMBLE
%DIF END PREAMBLE EXTENSION ADDED BY LATEXDIFF

% Define title defaults if not defined by user
\providecommand{\lettertitle}{Authors' Response to Reviews of}
\let\@journal\@empty
\let\@doi\@empty
\newcommand{\journal}[1]{\gdef\@journal{#1}}
\newcommand{\doi}[1]{\gdef\@doi{#1}}

% Make title and legend
\renewcommand\maketitle{
{\Large\bf \lettertitle}\\[1em]
{\LARGE \@title}\\[1em]
{\@author}\\
{\it \@journal,\/ }\texttt{\@doi}\\
\hrule
\hfill}
