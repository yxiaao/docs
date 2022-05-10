## dev

## docker
```shell
docker build -t mkdocs .

docker run --rm -it -p 8002:8000 \
  -v ${PWD}:/docs squidfunk/mkdocs-material:8.2.9 \
  serve --dev-addr=0.0.0.0:8000 --dirtyreload
docker run --rm -it -p 8002:8000 \
  --name mkdocs \
  -v ${PWD}:/docs \
  --entrypoint '' mkdocs \
  bash /docs/start.sh  


```