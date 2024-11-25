# this is a script for training yolov9

docker rm yolov9
docker run --name=yolov9 --gpus=all -it -v /Data/coco:/datasets/coco -v ./:/yolov9 -v /Data/coco128:/datasets/coco128 --shm-size=64g nvcr.io/nvidia/pytorch:23.05-py3
