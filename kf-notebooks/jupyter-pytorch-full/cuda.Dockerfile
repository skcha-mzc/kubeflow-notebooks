# Use the respective Makefile to pass the appropriate BASE_IMG and build the image correctly
ARG BASE_IMG=<jupyter-pytorch-cuda>
FROM $BASE_IMG

# install - requirements.txt
COPY --chown=jovyan:users requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -r /tmp/requirements.txt --quiet --no-cache-dir \
# RUN conda install --file /tmp/requirements.txt \
 && rm -f /tmp/requirements.txt
