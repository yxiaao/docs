## dev

## docker - dev server
```shell

docker run --rm -it -p 8002:8000 \
  -v ${PWD}:/docs squidfunk/mkdocs-material:8.2.9 \
  serve --dev-addr=0.0.0.0:8000 --dirtyreload

## dev
docker build -t mkdocs .
docker run --rm -it -p 8002:8000 \
  --name mkdocs \
  -v ${PWD}:/docs \
  --entrypoint '' mkdocs \
  bash /docs/start.sh  


```

# trouble shoot
## gh-deploy
`fatal: unable to access 'https://github.com/': The requested URL returned error: 403`

fix permission
ref: https://github.com/ad-m/github-push-action/issues/96#issuecomment-889984928

# use python vnev