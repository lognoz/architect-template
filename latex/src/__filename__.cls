% See LICENSE file for copyright and license details.

\LoadClass[11pt,a4paper,sans]{article}

\RequirePackage{fontspec}
\RequirePackage[utf8]{inputenc}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[none]{hyphenat}
\RequirePackage[
	left=15mm,
	right=15mm,
	top=15mm,
	bottom=15mm
]{geometry}

\RequirePackage[french,activeacute]{babel}
\RequirePackage{multicol}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage{tabularx}

\setmainfont[
	Path           = ../asset/font/,
	UprightFont    = *-Regular.otf,
	ItalicFont     = *-It.otf,
	BoldFont       = *-Semibold.otf,
	BoldItalicFont = *-SemiboldIt.otf
]{SourceSansPro}

\setlength{\parindent}{0pt}
\setlength{\columnsep}{2em}
\setlength{\extrarowheight}{0.15cm}
\setlist[itemize]{leftmargin=0.4cm, label={--}, parsep=0pt}

\renewcommand{\baselinestretch}{1}
\renewcommand{\paragraph}[1]{{\scriptsize #1 \par}}

\newcommand{\link}[2]{{
	\textbf{\textit{\href{#1}{#2}}}
}}
