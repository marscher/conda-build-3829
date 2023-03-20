FROM condaforge/mambaforge

COPY recipe/ /recipe
RUN conda install conda-build
RUN conda build /recipe
RUN conda env list
