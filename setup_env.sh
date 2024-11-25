# this is a script to setup environment for training yolov9

apt update
apt upgrade -y
apt install -y zip htop screen libgl1-mesa-glx

python -m pip install --upgrade pip
pip install seaborn thop
pip install pillow==9.5.0

cd /yolov9
python train_dual.py \
	--worker 8 \
	--device 0 \
	--batch 64 \
	--data data/coco.yaml \
	--img 640 \
	--cfg models/detect/yolov9-t.yaml \
	--weights '' \
	--name yolo-v9-t \
	--hyp hyp.scratch-high.yaml \
	--min-items 0 \
	--epochs 500 \
	--close-mosaic 15
