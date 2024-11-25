# this is a script to setup environment for exporting edge-tpu model

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | tee /etc/apt/sources.list.d/coral-edgetpu.list

apt update
apt upgrade -y
apt install -y zip htop screen libgl1-mesa-glx
apt install libusb-1.0-0
apt install edgetpu-compiler

python -m pip install --upgrade pip
pip install seaborn thop
pip install tensorflow==2.16.1 tf_keras==2.16.0 onnx2tf==1.22.3 numpy==1.23.5
pip install keras tflite_support flatbuffers
pip install sng4onnx onnx onnx_graphsurgeon onnxsim onnxslim onnxruntime-gpu


