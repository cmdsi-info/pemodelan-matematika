\ProvidesClass{bukumjh}

\LoadClass[11pt]{book}

\RequirePackage{graphicx} % Required for inserting images
\RequirePackage{amsmath,amssymb}
\RequirePackage{adjustbox}
\RequirePackage{tabularx}
\RequirePackage{fontawesome} % For icons
\RequirePackage{xcolor}      % For colored icons
\RequirePackage{array}       % For better table formatting
\RequirePackage{booktabs}    % For professional table lines
\RequirePackage{lmodern} % tambahkan agar spacing font lebih baik
\RequirePackage{url}
\usepackage{microtype}   % perbaikan spacing dan justifikasi

\RequirePackage{subcaption}
\RequirePackage[font=small, labelfont=bf, skip=2pt]{caption}
\AtBeginEnvironment{tabular}{\small}  
\AtBeginEnvironment{tabularx}{\small} 

\RequirePackage[sfdefault,light,medium]{josefin}
\newcommand{\jsm}{\fontseries{normal}\selectfont}

% Definisi command: Josefin Medium + Warna Abu-abu
\newcommand{\jsg}{%
  \fontseries{regular}\selectfont % Ubah ke varian medium
  \color{black!75} % Teks abu-abu
}

\newcommand{\jsh}{%
  \fontseries{regular}\selectfont % Ubah ke varian medium
  \color{black!60} % Teks abu-abu
}

\RequirePackage[
  a5paper, 
  inner=1.25cm,    % margin dalam (dekat binding buku)
  outer=1.25cm,  % margin luar
  top=1.25cm,
  bottom=1cm,
  includefoot,
  twoside       % penting untuk format buku (berbeda kanan-kiri)
]{geometry}




\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true, 
    linktoc=all, 
    linkcolor=blue, 
    filecolor=black, 
    urlcolor=blue, 
    citecolor=purple, 
    pdftitle={Pemodelan Matematika}, 
    pdfauthor={Dr. Mohammad Jamhuri, M.Si.}
}

\RequirePackage{parskip}

\RequirePackage{setspace}
\onehalfspacing

\RequirePackage{titlesec}
\RequirePackage[indonesian]{babel}

\renewcommand{\chaptername}{Bab}

\titleformat{\chapter}[display]
  {\normalfont\LARGE}{\chaptertitlename\ \thechapter}{0pt}{}
\titleformat{\section}
  {\normalfont\Large\jsg}{\thesection}{1em}{}
\titleformat{\subsection}
  {\normalfont\large\jsh}{\thesubsection}{1em}{}
\titleformat{\subsubsection}
  {\normalfont\itshape\jsh}{\thesubsubsection}{1em}{}

% Atur spasi sebelum/sesudah heading (opsional)
%\titlespacing*{\chapter}{0pt}{50pt}{30pt}
%\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
%\titlespacing*{\subsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
%\titlespacing*{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

\newtheorem{theorem}{Theorem}
\newtheorem{definition}{Definition}
\newtheorem{lemma}{Lemma}
\newtheorem{remark}{Remark}
\newtheorem{corollary}{Corollary}
\newtheorem{example}{Example}
\newtheorem{proposition}{Proposition}

\RequirePackage{minted}
% Define a custom Python environment with your settings
\newminted{python}{
  breaklines,            % Auto line breaks
  fontsize=\footnotesize,       % Font size
  bgcolor=gray!10,       % Background color
}

\newminted{markdown}{
  breaklines,            % Auto line breaks
  fontsize=\footnotesize,       % Font size
  bgcolor=blue!5,       % Background color
}



% Define colored checkmark (✅) and cross (❌)
\newcommand{\checkicon}{{\color{green!70!black}\faCheck}}
\newcommand{\crossicon}{{\color{red!70!black}\faTimes}}

%\RequirePackage{draftwatermark}
%\SetWatermarkText{Masih Draft}
%\SetWatermarkScale{1}

\RequirePackage{tikz}
\usetikzlibrary{trees}

\RequirePackage{enumitem}

% Remove vertical space before and between list items
\setlist[itemize]{itemsep=2pt, topsep=2pt, parsep=0pt, partopsep=0pt}
\setlist[enumerate]{itemsep=2pt, topsep=2pt, parsep=0pt, partopsep=0pt}

% Buat makro untuk cover full-page
\newcommand{\insertcover}{
  {
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture,overlay]
      \node[anchor=south west, inner sep=0pt] at (current page.south west)
        {\includegraphics[width=\paperwidth, height=\paperheight]{Fgr/cover data mining.png}};
    \end{tikzpicture}
    \clearpage
  }
}

% Halaman Sampul Dalam
\newcommand{\insertsampuldalam}{
  {
    \thispagestyle{empty}
    \begin{center}
      \vspace*{3.5cm}
      {\Huge\bfseries Pemodelan Matematika}\\[0.5em]
      {\Large\bfseries Teori, Aplikasi, dan Simulasi}\\[2cm]

      {\large\bfseries Dr. Mohammad Jamhuri, M.Si.}\\[3.75cm]

      {\normalsize Program Studi Matematika}\\[0.2cm]
      {\normalsize Fakultas Sains dan Teknologi}\\[0.2cm]
      {\normalsize Universitas Islam Negeri Maulana Malik Ibrahim Malang}\\[0.5cm]
      {\normalsize 2025}
    \end{center}
    \clearpage
  }
}

% Halaman Hak Cipta
\newcommand{\insertcopyrightpage}{
  {
    \thispagestyle{empty}
    \begin{center}
      \vspace*{5cm}
      {\large \textcopyright\ 2025}\\[1em]
      Dr. Mohammad Jamhuri, M.Si.\\[2em]
      Semua hak cipta dilindungi undang-undang. Dilarang memperbanyak atau memindahkan sebagian atau seluruh isi buku ini dalam bentuk apa pun tanpa izin tertulis dari penulis.\\[2em]
      Edisi Pertama, 2025\\
      Malang, Jawa Timur, Indonesia
    \end{center}
    \clearpage
  }
}

% Kata Pengantar
\newcommand{\insertkatapengantar}{
  {
    \section*{Kata Pengantar}
    \addcontentsline{toc}{section}{Kata Pengantar}
    Puji syukur ke hadirat Allah SWT atas terselesaikannya penyusunan buku ajar \textit{Pemodelan Matematika} ini. Buku ini dirancang khusus untuk membekali mahasiswa matematika dengan kemampuan menerjemahkan fenomena dunia nyata—baik dalam bidang sains, ekologi, kesehatan, teknologi, maupun dinamika sosial—ke dalam bahasa formal matematika.

    Setiap bab disusun dengan pendekatan yang seimbang antara perumusan asumsi logis, analisis analitik (kestabilan dan perilaku kualitatif sistem), serta simulasi komputasional. Penulis berharap buku ini mampu menumbuhkan daya abstraksi dan ketajaman analisis matematis mahasiswa dalam memecahkan masalah riil.

    Ucapan terima kasih disampaikan kepada pimpinan Fakultas Sains dan Teknologi UIN Maulana Malik Ibrahim Malang, rekan-rekan sejawat di Departemen Matematika, serta para mahasiswa yang senantiasa memberi inspirasi selama perkuliahan berlangsung.

    \begin{flushright}
    Malang, 2025\\[0.3cm]
    \textbf{Penulis}
    \end{flushright}
    \clearpage
  }
}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{} % kosongkan header/footer default

% Nomor halaman di luar (left untuk genap, right untuk ganjil)
\fancyfoot[RO,LE]{\thepage}

% Tambahkan garis horizontal di footer
\renewcommand{\footrulewidth}{0.4pt} % atau 0.5pt sesuai selera

% Hilangkan garis horizontal di header/footer
\renewcommand{\headrulewidth}{0pt}
%\renewcommand{\footrulewidth}{0pt}

\RequirePackage{graphicx}
\RequirePackage{wrapfig}
\RequirePackage{parskip}

% Heading tanpa nomor
%\titleformat{\section}[block]{\bfseries\Large\filcenter}{}{0em}{}

% Makro Tentang Penulis
\newcommand{\inserttentangpenulis}{
  \clearpage
  \section*{Tentang Penulis}
  \addcontentsline{toc}{section}{Tentang Penulis}

  \IfFileExists{Gbr/jamhuri_sqr.jpg}{%
  \begin{wrapfigure}{l}{2.5cm}
    \includegraphics[width=2.5cm]{Gbr/jamhuri_sqr.jpg}
  \end{wrapfigure}
  }{}
  \textbf{Dr. Mohammad Jamhuri, M.Si.} adalah dosen tetap di Departemen Matematika, Fakultas Sains dan Teknologi, Universitas Islam Negeri Maulana Malik Ibrahim Malang. Ia menyelesaikan program doktoral di bidang Matematika Terapan di Institut Teknologi Sepuluh Nopember (ITS) Surabaya. Minat riset beliau meliputi machine learning, analisis numerik, dan pemodelan komputasional.

  \IfFileExists{Gbr/Isa_sqr.jpg}{%
  \begin{wrapfigure}{r}{2.5cm}
    \includegraphics[width=2.5cm]{Gbr/Isa_sqr.jpg}
  \end{wrapfigure}
  }{}
  \textbf{Prof. Dr. Mohammad Isa Irawan, M.T.} merupakan guru besar di Departemen Matematika, Fakultas Sains dan Analitika Data, Institut Teknologi Sepuluh Nopember (ITS) Surabaya. Ia meraih gelar doktor di bidang Software Engineering dari Vienna University of Technology, Austria. Minat riset beliau meliputi data science, machine learning, bioinformatika, data mining, artificial intelligence, dan decision sciences. Ia juga aktif memimpin berbagai proyek riset internasional.

  \IfFileExists{Gbr/mukhlash_sqr.jpg}{%
  \begin{wrapfigure}{r}{2.5cm}
    \includegraphics[width=2.5cm]{Gbr/mukhlash_sqr.jpg}
  \end{wrapfigure}
  }{}
  \textbf{Dr. Imam Mukhlash, M.T.} adalah dosen dan peneliti di Departemen Matematika ITS. Ia menyelesaikan pendidikan doktoral di bidang data mining di Institut Teknologi Bandung. Minat risetnya mencakup data mining, pembelajaran mesin, dan rekayasa perangkat lunak, dengan fokus pada pengolahan data tekstual dan temporal.

  \IfFileExists{Gbr/Kusumastuti.png}{%
  \begin{wrapfigure}{l}{2.5cm}
    \includegraphics[width=2.5cm]{Gbr/Kusumastuti.png}
  \end{wrapfigure}
  }{}
  \textbf{Ari Kusumastuti, M.Pd., M.Si.} merupakan dosen Matematika di UIN Maulana Malik Ibrahim Malang. Ia menyelesaikan pendidikan S2 di bidang Matematika Terapan dan kini tengah menempuh studi doktoral di ITS. Fokus risetnya adalah pada pemodelan matematika dan simulasi numerik dalam ilmu alam dan sosial.

  \clearpage
}


% Untuk cover belakang full-page

% Buat perintah insert cover belakang
\newcommand{\insertbackcover}{
  {
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture, overlay]
      \node[anchor=south west, inner sep=0pt] at (current page.south west)
        {\includegraphics[width=\paperwidth,height=\paperheight]{Gbr/Cover belakang.png}};
    \end{tikzpicture}
    \clearpage
  }
}

\RequirePackage{url}

\RequirePackage[indonesian]{babel}
\RequirePackage[T1]{fontenc}


% Hindari kombinasi ekstrem, pakai nilai yang seimbang:
%\tolerance=3000
%\emergencystretch=2em
%\hyphenpenalty=500
%\exhyphenpenalty=500

% Hindari \sloppy kecuali sangat diperlukan


\RequirePackage{etoolbox}
\AtBeginEnvironment{table}{\scriptsize}

\RequirePackage[most]{tcolorbox}
\tcbset{colback=blue!5!white, colframe=blue!75!black, boxrule=0.8pt, arc=3mm}