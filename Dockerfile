FROM python:3.11-slim-bookworm
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    make \
    git \
    graphviz \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    sphinx \
    sphinx-rtd-theme \
    sphinx-autobuild \
    myst-parser \
    sphinxcontrib-mermaid\
    sphinxcontrib-images

WORKDIR /docs
ADD ./docs .

 CMD ["sphinx-build", "-b", "html", "source", "../build"]