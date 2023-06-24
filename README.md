# research_notebooks_dockerfile

## Build the image

```bash
docker build . -t <prefix>/research_notebooks
```

## Run the image

```bash
docker run -i -t -v $PWD/notebooks:/notebooks   --rm -p 8888:8888 --name research_notebooks <prefix>/anaconda
```

