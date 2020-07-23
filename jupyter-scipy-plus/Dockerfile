FROM jupyter/scipy-notebook:latest

USER $NB_USER

RUN /opt/conda/bin/jupyter labextension install @krassowski/jupyterlab_go_to_definition
RUN /opt/conda/bin/jupyter labextension install jupyterlab-python-file

# Copying this into place (to try to enable the extension manager by default)
# just seems to screw things up. Need to debug.
#COPY extensionmanager-extension /home/jovyan/.jupyter/lab/user-settings/@jupyterlab/extensionmanager-extension
