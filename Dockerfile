FROM tatsushid/alpine-py3-tensorflow-jupyter:latest 

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN pip3 install -U pip
RUN apk update
RUN apk add gcc musl-dev python3-dev cython hdf5-dev
RUN pip3 install keras pydot_ng h5py
RUN rm /usr/bin/python; ln -s /usr/bin/python3 /usr/bin/python
RUN python -c "from keras.datasets import mnist; from keras.datasets import cifar10; from keras.datasets import cifar100; mnist.load_data(); cifar10.load_data(); cifar100.load_data()"
