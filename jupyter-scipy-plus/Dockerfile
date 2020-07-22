FROM jupyter/scipy-notebook:latest

USER $NB_USER

RUN /opt/conda/bin/jupyter labextension install @krassowski/jupyterlab_go_to_definition
RUN /opt/conda/bin/jupyter labextension install jupyterlab-python-file
