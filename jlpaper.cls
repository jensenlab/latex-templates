\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jlpaper}[2022/07/14 Jensen Lab Paper Class]

\LoadClass{article}

% small captions with bolded ``Table 1''
\RequirePackage[labelfont={bf,footnotesize},font=footnotesize]{caption}
\DeclareCaptionFormat{supplement}{\textbf{Supplementary} #1#2#3\par}

% Palatino Linotype font
\RequirePackage{newpxtext,newpxmath}

% 1 inch margins all around
\RequirePackage[margin=1in]{geometry}

\RequirePackage{booktabs}
\RequirePackage{amsmath}

% use symbols rather than numbers for footnotes
\renewcommand{\thefootnote}{\fnsymbol{footnote}}

\newcommand\email[1]{\texttt{#1}}

%\makeatletter
\newcommand\affiliation[1]{\gdef\@affiliation{#1}}
\renewcommand\maketitle{%
	\begin{center}
		{\LARGE \@title}\\
		\bigskip
		{\large \@author}\\
		\medskip
		{\small \@affiliation}
	\end{center}
}

\newcommand\makesupplementtitle{
	\begin{center}
		{\Large Supplementary Material}\\
		\bigskip
		{\LARGE \@title}\\
		\bigskip
		{\large \@author}\\
		\medskip
		{\small \@affiliation}
	\end{center}
}
%\makeatother


\newcommand\beginsupplement{
	\clearpage
	\setcounter{page}{1}
	\captionsetup{format=supplement}
	\setcounter{figure}{0}
	\setcounter{section}{0}
}

\newcommand\supplement{
	\beginsupplement
	\makesupplementtitle
}

\newcommand\beginresponse{
	\clearpage
	\setcounter{page}{1}
	\setcounter{section}{0}
}

\newcommand\makeresponsetitle{
	\begin{center}
		{\Large Response to Reviewers}\\
		\bigskip	
	\end{center}
}

\newcommand\response{
	\beginresponse
	\makeresponsetitle
}

\newcommand\secline{%
	\hrule height 2pt%
	\bigskip
}
\newcommand\reviewer[1]{\section*{Reviewer~#1}\secline}
\newenvironment{critique}{\begin{quote}\itshape}{\end{quote}}
