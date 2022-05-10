FROM squidfunk/mkdocs-material:8.2.9 

RUN pip install mkdocs-material

RUN apk update
RUN apk add bash inotify-tools

CMD start.sh