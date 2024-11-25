# this is a script for exporting edge-tpu models

docker rm yolov9
docker run --name=yolov9 --gpus=all -it -v ./:/yolov9 -v /Data/coco128:/datasets/coco128 --env-file=./tensorflow.env --shm-size=64g nvcr.io/nvidia/pytorch:23.05-py3

