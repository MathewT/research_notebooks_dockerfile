FROM continuumio/miniconda3
LABEL maintainer="mathew.thomas@longdivision.com"

WORKDIR /notebooks

RUN echo "alias ll='ls -alF'" >> $HOME/.bashrc \
	echo "alias la='ls -A'" >> $HOME/.bashrc \
	echo "alias l='ls -CF'" >> $HOME/.bashrc \
	echo "alias q='exit'" >> $HOME/.bashrc \
	echo "alias c='clear'" >> $HOME/.bashrc

RUN conda install matplotlib pandas jupyter -y --quiet && \
    conda install -c pytorch pytorch cpuonly -y --quiet && \
    conda install -c pytorch torchvision -y --quiet

EXPOSE 8888

CMD [ "jupyter", "notebook", "--notebook-dir=/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--allow-root" ]
