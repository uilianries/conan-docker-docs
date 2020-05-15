FROM ubuntu:bionic

COPY run.sh /usr/local/bin/build-conan-docs

RUN apt-get -qq update \
    && apt-get -q install -y --no-install-recommends \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-latex-extra \
    latexmk \
    enchant \
    python3-pip \
    wget \
    make \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x /usr/local/bin/build-conan-docs

WORKDIR /tmp/docs
CMD [ "build-conan-docs" ]
