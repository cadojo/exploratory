\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exploratory}[2023/08/27 v0.1 Exploratory articles.]

\RequirePackage[usenames,dvipsnames]{xcolor}

\DeclareOption{onecolumn}{\gdef\bodycols#1{#1}}
\DeclareOption{twocolumn}{\gdef\bodycols#1{\twocolumn[#1]}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax
\LoadClass{extarticle}

\RequirePackage{etoolbox}
\RequirePackage{fancyhdr}
\RequirePackage{titling}
\RequirePackage{lastpage}
\RequirePackage{hyperref}
\RequirePackage{cfr-lm}
\RequirePackage{tocloft}

\fancypagestyle{plain}{%
  \renewcommand{\headrulewidth}{0pt}%
  \fancyhf{}%
  \fancyfoot[L]{\thetitle}
  \fancyfoot[R]{Page \thepage\ of \pageref{LastPage}}
}

\renewcommand{\maketitlehooka}{\vspace*{-0.5in}}
\renewcommand{\pretitle}{\expandafter\bfseries}

\renewenvironment{abstract}{
  \begin{center}
    \begin{minipage}{0.67\textwidth}
      \small
}{
    \end{minipage}
  \end{center}
  \vspace{2em}
}

\setlength{\cftbeforesecskip}{6pt}