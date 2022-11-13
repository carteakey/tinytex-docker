FROM ubuntu:focal

WORKDIR /var/local

RUN apt-get update && apt-get install -y perl wget libfontconfig1 && \
    wget -qO- "https://yihui.org/tinytex/install-bin-unix.sh" | sh && \
    apt-get clean

ENV PATH="${PATH}:/root/bin"

RUN fmtutil-sys --all

RUN tlmgr install fancyhdr \
    fontawesome \
    pgf \
    lastpage \
    synctex \
    texcount \
    latexindent \
    titlesec \
    marvosym \
    enumitem \
    preprint \
    opensans \
    fontaxes
