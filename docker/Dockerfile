FROM jupyter/tensorflow-notebook:ea01ec4d9f57

# install addition packages here
RUN pip install \
    'keras==2.4.3' \
    'gensim==3.8.2' 

# RUN ls /home/jovyan/work

RUN cd /home/jovyan/work && \
    wget -q https://s3.amazonaws.com/dl4j-distribution/GoogleNews-vectors-negative300.bin.gz -O w2v.bin.gz
USER $NB_USER