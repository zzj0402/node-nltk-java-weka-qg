FROM zzj0402/node-nltk-java-weka
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh
# VOLUME ["/var/run/docker.sock"]
COPY . .
RUN wget https://s3.eu-central-1.amazonaws.com/idris-public-data/model.t7 -P /data/
RUN pip3 install pycorenlp pyzmq
# RUN ./setup