# course-youtube-pytorch

[Course Video on YT](https://www.youtube.com/watch?v=V_xro1bcAuA)

Latest time:  43:47


Links from the course:

https://www.elementsofai.com/


### Install and Run miniconda

```bash
docker pull continuumio/miniconda3

docker run -i --rm -t continuumio/miniconda3 /bin/bash

or

docker run -i -t -v $PWD/notebooks:/notebooks --rm -p 8888:8888 continuumio/miniconda3 /bin/bash -c "\
    conda install matplotlib pandas jupyter -y --quiet && \
    mkdir -p /myopt/notebooks && \
    jupyter notebook \
    --notebook-dir=/ --ip='*' --port=8888 \
    --no-browser --allow-root"


docker run -i -t -v $PWD/notebooks:/notebooks -w="/notebooks" --rm -p 8888:8888 continuumio/miniconda3 /bin/bash -c "\
    conda install matplotlib pandas jupyter -y --quiet && \
    conda install -c pytorch pytorch cpuonly -y --quiet && \
    conda install -c pytorch torchvision -y --quiet && \
    jupyter notebook \
    --notebook-dir=/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"


docker run -i -t -v $PWD/myopt:/myopt --rm -p 8888:8888 continuumio/miniconda3 /bin/bash -c "\
    conda install jupyter -y --quiet && \
    mkdir -p /myopt/notebooks && \
    jupyter notebook \
    --notebook-dir=/myopt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"

```

