FROM gcr.io/tink-containers/debian:buster
RUN apt-get update && apt-get install -y cmake g++
COPY . /project
WORKDIR /project
RUN rm -rf build && mkdir build
WORKDIR /project/build
RUN cmake .. && make -j$(nproc)
