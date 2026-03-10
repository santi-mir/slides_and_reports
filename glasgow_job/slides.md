---
title: "Binary Parsers in Typescript"
author: "Santiago Miranda"
date: "March 12th, 2026"
theme: "Madrid"
colortheme: "dolphin"
fontsize: "12pt"
header-includes:
  - \usepackage{fontspec}
  - \usepackage{graphicx}
  - \usepackage{emoji}
  - \usepackage{caption}
  - \usepackage{xcolor}
  - \usepackage{hyperref}
---


# Binary Parsers {.frame-title}

1. Varian NMR data parser
\vspace{0.6em}
2. Development Workflow
\vspace{0.6em}
3. Related Projects


# Binary Parsers? {.frame-title}

\begin{itemize}
\setbeamertemplate{itemize item}{}
\setlength\itemsep{0.5em}
\setlength\parskip{0pt}
\item What are binary parsers? \pause
\item Why not Python? \pause
\item Companies using these tools
\end{itemize}
\vspace{1em}

\begin{center}
\includegraphics[width=0.6\textwidth]{./pdf/companies.pdf}
\end{center}

---

# Zakodium / NMRium {.frame-title}

\begin{figure}
\centering
\includegraphics[width=0.8\textwidth]{./png/people.png}
\caption*{\textcolor{cyan}{\url{https://nmrium.org/about}}}
\end{figure}

<!-- ![Platform 1](id_platform.png) -->
<!-- ![Platform 2](id_platform_2.png) -->
<!-- ![Platform 3](id_platform_3.png) -->

---

# Programming Languages {.frame-title}

\begin{itemize}
  \item \textbf{Typescript}
    \begin{itemize}
      \item[\scalebox{0.5}{$\blacktriangleright$}] For Node and Browser
      \item[\scalebox{0.5}{$\blacktriangleright$}] Different compilation targets
      \item[\scalebox{0.5}{$\blacktriangleright$}] TF.js and ONNX
    \end{itemize}


  \item \textbf{Python}
    \begin{itemize}
      \item[\scalebox{0.5}{$\blacktriangleright$}] TF or PyTorch
      \item[\scalebox{0.5}{$\blacktriangleright$}] Numpy and other libraries
    \end{itemize}

  \item \textbf{Bash}
    \begin{itemize}
      \item[\scalebox{0.5}{$\blacktriangleright$}] Automation and scripts
    \end{itemize}
\end{itemize}

---

# Varian Converter {.frame-title}

\begin{figure}
\centering
\includegraphics[width=0.7\textwidth]{./pdf/code_flow.pdf}
\caption*{Convert Varian NMR to JSON}
\end{figure}

---

# IOBuffer {.frame-title}

- IOBuffer: Read and write binary data in memory
\vspace{1em}

\begin{figure}
\centering
\includegraphics[width=0.7\textwidth]{./png/iobuffer.png}
\caption*{\textcolor{cyan}{\url{https://github.com/image-js/iobuffer}}}
\end{figure}

-----

# IOBuffer {.frame-title}

```typescript
import { IOBuffer } from 'iobuffer';

const io = new IOBuffer() // offset 0
io.writeChars('Hello world') // offset now 11
  .writeUint32(42)
  .setBigEndian()
  .writeUint32(24)
  .skip(2)
  .rewind() // back to 0
  .readArray(11, "uint8") // read characters at once
```

Contributions: text decoder, readArrays of typed-data, host-endianness detection.

---

# Development Workflow {.frame-title}

\begin{center}
\includegraphics[width=0.6\textwidth]{./pdf/git_dim_others.pdf}
\end{center}


---

# Development Workflow {.frame-title}

\begin{center}
\includegraphics[width=0.6\textwidth]{./pdf/github_dim_others.pdf}
\end{center}

---

# Github & VSCode {.frame-title}

VS Code and Workflows (CI/CD)
\vspace{1em}

\begin{table}[h]
\centering
\begin{tabular}{ll}
\textbf{Tool}         & \textbf{Description}     \\ \hline
Semantic Release      & Changelog, Publish       \\
Vitest                & Testing                  \\
ESLint, Prettier      & Lint and Format          \\
Typescript            & Type-check               \\
Typedoc               & Docs                     \\
\end{tabular}
\end{table}

---

# Workflows {.frame-title}


\begin{figure}
\centering
\includegraphics[width=0.8\textwidth]{./png/workflow.png}
\end{figure}

---

# Development Workflow {.frame-title}

\begin{center}
\includegraphics[width=0.6\textwidth]{./pdf/vscode_dim_others.pdf}
\end{center}

---

# VSCode

\begin{itemize}
  \item Remote SSH
  \item NodeJS Debugger
    \begin{itemize}
      \item[\emoji{disappointed-face}] Configure \texttt{launch.json}
      \item[\emoji{grinning-face}] Track all variables and find bugs
    \end{itemize}
\end{itemize}


---

# Development Workflow {.frame-title}

\begin{center}
\includegraphics[width=0.6\textwidth]{./pdf/yeoman_dim_others.pdf}
\end{center}

---

# Other Projects {.frame-title}

* Pseudonymisation of Identity Documents

---

# Other Projects {.frame-title}

* mrz.zakodium.com

---


# Other Projects {.frame-title}

* mrz.zakodium.com

---

# Other Projects {.frame-title}

\begin{itemize}
  \item \textbf{Pseudonymisation of Identity Documents}\\
    \hspace{1em} Deep Learning project (private repository)

  \item \textbf{nnls} (Non-negative least squares)\\
    \hspace{1em} \textcolor{cyan}{\url{https://github.com/mljs/nnls}}

  \item \textbf{fcnnls} (Fast Combinatorial Non-negative least squares)\\
    \hspace{1em} \textcolor{cyan}{\url{https://github.com/mljs/fcnnls}}

  \item \textbf{polynomial-regression}\\
    \hspace{1em} \textcolor{cyan}{\url{https://github.com/mljs/polynomial-regression}}

  \item \textbf{spc-parser}\\
   \hspace{1em} \textcolor{cyan}{\url{https://github.com/cheminfo/spc-parser}}

  \item \textbf{wdf-parser}\\
    \hspace{1em} \textcolor{cyan}{\url{https://github.com/cheminfo/wdf-parser}}
\end{itemize}

---

#

\begin{center}
 Thanks!
\end{center}

