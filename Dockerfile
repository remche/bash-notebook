FROM jupyter/base-notebook

USER root
RUN apt-get update && apt-get install --no-install-recommends -y \
    bash-completion

USER jovyan
RUN  pip install bash_kernel && \
     python -m bash_kernel.install && \
     rm -rf ~/.local && \
     fix-permissions $CONDA_DIR && \
     fix-permissions /home/$NB_USER

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["tini", "-g", "--", "/entrypoint.sh"]
