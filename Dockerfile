FROM tensorflow/tensorflow:latest-devel

COPY requirements.txt                  /root

RUN pip install -r requirements.txt

COPY def_classify.py                   /root
COPY classify_using_coordinates.py     /root
COPY retrained_graph-4_4N_5_7.pb       /root
COPY retrained_labels-4_4N_5_7.txt     /root

# mount-point for persistence beyond container
VOLUME ["/data"]
