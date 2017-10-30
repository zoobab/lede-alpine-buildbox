FROM alpine:3.6
RUN apk update
RUN apk add git asciidoc bash bc binutils bzip2 flex gcc g++ gawk make wget perl file ncurses-dev tar findutils coreutils unzip grep zlib-dev patch linux-headers diffutils
