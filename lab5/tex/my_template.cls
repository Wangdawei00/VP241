\NeedsTeXFormat{LaTeX2e}
%\ProvideClass{my_template}
\LoadClass[a4paper]{article}
\makeatletter
\def\@Exercisenum{0}
\newcommand\Exercisenum[1]{
	\def\@Exercisenum{#1}
}
\def\@group{1}
\newcommand\group[1]{
	\def\@group{#1}
}
\newif\iffellowornot\fellowornotfalse
\newcommand\fellow[2]{
	\def\@fellowname{#1}
	\def\@fellowID{#2}
	\fellowornottrue
}
\RequirePackage{titlesec}
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
\renewcommand{\maketitle}{
	\begin{titlepage}
	\begin{center}
	\HRule \\[0.8cm]
	\textsc {UM-SJTU Joint Institute \\ Physicis Laboratory II\\(VP241)}\\[0.5cm]
	\HRule \\
	\vfill
	\textsc {Laboratory Report} \\[1.5cm]
	\textsc {Exercise \@Exercisenum} \\[0.8cm]
	\textsc \@title \\ 
	\vfill
	Name: \textbf {Wang Dawei} \ \ \ \ \ ID: 518370910063\ \ \ \ \ \ Group: \@group   
	\iffellowornot
	\\ Name: \@fellowname\ \ \ \ ID: \@fellowID\ \ \ \ \ \ Group: \@group
	\fi
	
	Date: \today 
	\newpage
	\end{center}
	\end{titlepage}
}
\makeatother