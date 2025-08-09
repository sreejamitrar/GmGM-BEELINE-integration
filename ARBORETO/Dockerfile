FROM continuumio/miniconda3:latest

RUN apt-get update && apt-get install -y time

COPY environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml

COPY runArboreto.py /

WORKDIR /data
RUN mkdir /data

ENV PATH /opt/conda/envs/BEELINE/bin:$PATH

CMD ["conda", "run", "--no-capture-output", "-n", "BEELINE", "python", "/runArboreto.py"]
