FROM squidfunk/mkdocs-material:9.4.10

RUN apk update
RUN apk add bash inotify-tools

RUN pip install mkdocs-material
RUN pip install mkdocs-git-revision-date-localized-plugin


CMD start.sh