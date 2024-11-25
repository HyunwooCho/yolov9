# this is a script for training yolov9
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
    --hyp data/hyps/hyp.scratch-high.yaml \
    --min-items 0 \
    --epochs 500 \
    --close-mosaic 15
