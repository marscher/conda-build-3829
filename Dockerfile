FROM condaforge/mambaforge

RUN conda install conda-build
COPY recipe/ /recipe
RUN conda build /recipe
RUN conda env list
