FROM tatsushid/alpine-py3-tensorflow-jupyter:latest 
RUN pip3 install keras pydot_ng
RUN python -c "from keras.datasets import mnist; from keras.datasets import cifar10; from keras.datasets import cifar100; mnist.load_data(); cifar10.load_data(); cifar100.load_data()"
