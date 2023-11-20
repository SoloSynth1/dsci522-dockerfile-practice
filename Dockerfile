FROM quay.io/jupyter/minimal-notebook:2023-11-19

WORKDIR /app

RUN conda install -y -c conda-forge jupyterlab==4.0.8

COPY environment.yml .

RUN conda env update --file environment.yml
