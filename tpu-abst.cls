
%
% tpu-abst.cls
%
% \UTF{0082}±\UTF{0082}\UTF{00CC} class file \UTF{0082}\UTF{00CD}\UTF{0081}Cplnews.cls \UTF{0082}\UTF{00F0}\UTF{008E}Q\UTF{008D}l\UTF{0082}\UTF{00C9}\UTF{0082}\UTF{00B5}\UTF{0082}\UTF{00C4}\UTF{0082}¢\UTF{0082}\UTF{00DC}\UTF{0082}\UTF{00B7}\UTF{0081}D
%                   Written by Toru Nakazawa(In Marsh) 1998/2/4
%
% 2013.1.29: by Ms.K
% \UTF{0095}\UTF{00CF}\UTF{008D}X\UTF{0081}F \UTF{008C}\UTF{20AC}\UTF{008B}\UTF{0086}\UTF{008E}\UTF{00BA}\UTF{0096}\UTF{0152}\UTF{0082}\UTF{00C6}\UTF{008A}w\UTF{0090}\UTF{00D0}\UTF{0094}\UTF{00D4}\UTF{008D}\UTF{0086}\UTF{0081}\UTF{0095}\UTF{008E}\UTF{0081}\UTF{0096}\UTF{0152}\UTF{0082}\UTF{00F0}\UTF{0089}E\UTF{0091}\UTF{00B5}\UTF{0082}\UTF{0160}\UTF{0082}\UTF{00C9}%
% \UTF{0095}\UTF{00CF}\UTF{008D}X\UTF{0081}F textheight=257mm\UTF{008C}\UTF{00C5}\UTF{0092}\UTF{00E8}%
% 2010.1.24: by Ms.K
% \UTF{0095}\UTF{00CF}\UTF{008D}X\UTF{0081}F \UTF{008F}\UTF{00EE}\UTF{0095}\UTF{00F1}\UTF{0083}V\UTF{0083}X\UTF{0083}e\UTF{0083}\UTF{0080}\UTF{008D}H\UTF{008A}w\UTF{0089}\UTF{00C8}\UTF{0097}p\UTF{0082}\UTF{00C9}\UTF{0095}\UTF{00CF}\UTF{008D}X
%
% 2005.2.7: by Ms.K
% \UTF{0095}\UTF{00CF}\UTF{008D}X\UTF{0081}F \UTF{008C}\UTF{20AC}\UTF{008B}\UTF{0086}\UTF{008E}\UTF{00BA}\UTF{0096}\UTF{0152}\UTF{0082}\UTF{00C6}\UTF{008A}w\UTF{0090}\UTF{00D0}\UTF{0094}\UTF{00D4}\UTF{008D}\UTF{0086}\UTF{0081}\UTF{0095}\UTF{008E}\UTF{0081}\UTF{0096}\UTF{0152}\UTF{0082}\UTF{00F0}\UTF{008D}¶\UTF{0091}\UTF{00B5}\UTF{0082}\UTF{0160}\UTF{0082}\UTF{00C9}%
% \UTF{0095}\UTF{00CF}\UTF{008D}X\UTF{0081}F labname=10 \UTF{008C}v\UTF{008E}Z\UTF{008B}@\UTF{0083}Z\UTF{0083}\UTF{0093}\UTF{0083}^\UTF{0081}[ \UTF{0081}\UTF{0161} \UTF{0083}\\UTF{0083}t\UTF{0083}g\UTF{0083}E\UTF{0083}F\UTF{0083}A\UTF{008D}H\UTF{008A}w
% 2006.2.14: by Ms.K
% \UTF{0095}\UTF{00CF}\UTF{008D}X\UTF{0081}F section\UTF{0083}^\UTF{0083}C\UTF{0083}g\UTF{0083}\UTF{008B}\UTF{008D}¶\UTF{008A}\UTF{00F1}\UTF{0082}\UTF{00B9}%
%
\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{tpu-abst}[1998/02/05 v1.0a Standard pLaTeX class]

\InputIfFileExists{tpu-abst.cfg}%
  {\ClassInfo{tpu-abst}{Using local configuration file}}%
  {\ClassInfo{tpu-abst}{No local configuration file}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{tpu-abst}}
\newcommand{\@tpuptsize}{}
\DeclareOption{10pt}{\renewcommand{\@tpuptsize}{10pt}
		     \def\@tputextheight{45.5}}
\DeclareOption{11pt}{\renewcommand{\@tpuptsize}{11pt}
		     \def\@tputextheight{44}}
\DeclareOption{12pt}{\renewcommand{\@tpuptsize}{12pt}
		     \def\@tputextheight{41.5}}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\ExecuteOptions{10pt,final}
\ProcessOptions
\LoadClass[twocolumn,a4j,\@tpuptsize]{jarticle}
\pagestyle{empty}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \maketitle parameters.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\@titlefont}{\normalfont\huge\bfseries\raggedright}

\newcommand{\kouzanum}{\renewcommand{\@kouzanum}}
\newcommand{\@kouzanum}{\ClassError{tpu-abst}
   {No \protect\kouzanum~given}\@eha}

\newcommand{\kouzaname}{\renewcommand{\@kouzaname}}
\newcommand{\@kouzaname}{\ClassError{tpu-abst}
   {No \protect\kouzaname~given}\@eha}

\newcommand{\happyou}{\renewcommand{\@happyou}}
\newcommand{\@happyou}{\ClassError{tpu-abst}
   {No \protect\happyou~given}\@eha}

\newcommand{\gakuban}{\renewcommand{\@gakuban}}
\newcommand{\@gakuban}{\ClassError{tpu-abst}
   {No \protect\gakuban~given}\@eha}

% 2010.1.24 -- revised
%\renewcommand{\maketitle}{%
%   \twocolumn[%
%      {\@titlefont\@kouzanum --\@happyou\hskip1zw\parbox[t][3\Cvs]{20zw}{%
%         \@title}}%
%	 \par\vskip\baselineskip%
%	 \raggedleft{\normalfont\large\parbox{11zw}{%\centering%
%	 \labname{\@kouzanum}\par%
%		  \@gakuban \@author}}%
%	 \vskip\baselineskip%
%   ]}%
\renewcommand{\maketitle}{%
   \twocolumn[%
      {\@titlefont\@kouzanum --\@happyou\hskip1zw\parbox[t][3\Cvs]{20zw}{%
         \@title}}%
	 \par\vskip\baselineskip%
	 \raggedleft{\normalfont\large\parbox{11zw}{%\centering%
	     \hfill \labname \par%
	     \hfill \@gakuban \@author
	 }}%
	 \vskip\baselineskip%
   ]}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sectioning
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\section}{\@startsection{section}{1}{\z@}%
   {.3\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
   {.3\Cvs \@plus.3\Cdp}%
%   {\hskip-.5zw\reset@font\large\bfseries\underline}} 2006.2.14 revised
   {\hskip-1zw\reset@font\large\bfseries\underline}}
\renewcommand{\thesection}{\arabic{section}.\hspace{-1zw}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Page Layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength\oddsidemargin{-0.4mm}
\setlength\topmargin{-17.0mm}
%\setlength\textheight{\@tputextheight\Cvs}
\setlength\textheight{257mm}
\setlength\footskip{0mm}
\setlength\textwidth{170mm}
\setlength\abovecaptionskip{5\p@}
\setlength\belowcaptionskip{-10\p@}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% misc.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\def\labname#1{%
%    \ifcase#1 \UTF{0082}\UTF{00C8}\UTF{0082}\UTF{00C8}\UTF{0082}\UTF{00B5}\UTF{0082}\UTF{00CC}\or \UTF{0093}d\UTF{008E}¥\UTF{0089}\UTF{00F0}\UTF{0090}\UTF{00CD}\or \UTF{0093}d\UTF{008E}q\UTF{0089}\UTF{00F1}\UTF{0098}H\or \UTF{0090}§\UTF{008C}\UTF{00E4}\UTF{0083}V\UTF{0083}X\UTF{0083}e\UTF{0083}\UTF{0080}\UTF{008D}H\UTF{008A}w\or \UTF{008C}v
%    \UTF{008E}Z\UTF{008B}@\UTF{008D}H\UTF{008A}w\or \UTF{008F}\UTF{00EE}\UTF{0095}\UTF{00F1}\UTF{008D}H\UTF{008A}w\or \UTF{0092}\UTF{00CA}\UTF{0090}M\UTF{008D}H\UTF{008A}w\or \UTF{0093}d\UTF{008E}¥\UTF{0094}g\UTF{008D}H\UTF{008A}w\or \UTF{008B}@\UTF{0094}\\UTF{008D}\UTF{00DE}\UTF{0097}\UTF{00BF}\UTF{008D}H\UTF{008A}w\or \UTF{0083}f
%    \UTF{0083}o\UTF{0083}C\UTF{0083}X\UTF{008D}H\UTF{008A}w\or \UTF{0083}\\UTF{0083}t\UTF{0083}g\UTF{0083}E\UTF{0083}F\UTF{0083}A\UTF{008D}H\UTF{008A}w\or \UTF{008E}\UTF{008B}\UTF{008A}o\UTF{008F}\UTF{00EE}\UTF{0095}\UTF{00F1}\UTF{008F}\UTF{0088}\UTF{0097}\UTF{009D}\or \UTF{008C}\UTF{00C5}\UTF{0091}\UTF{00CC}\UTF{0095}\UTF{0161}\UTF{0090}\UTF{00AB}\or \UTF{0089}\UTF{00B9}\UTF{0090}\UTF{00BA}\UTF{008C}\UTF{0178}\UTF{008C}\UTF{00EA}%
%    \UTF{008D}H\UTF{008A}w\fi\kouzatitle}
\def\kouzatitle{\UTF{008C}\UTF{20AC}\UTF{008B}\UTF{0086}\UTF{008E}\UTF{00BA}}
\def\labname{\@kouzaname\kouzatitle}
\endinput
