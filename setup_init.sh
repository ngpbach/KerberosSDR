#/bin/bash!

echo "[ INFO ] Set file executation rights"
chmod a+x _receiver/C/rtl_daq
chmod a+x _receiver/C/sim
chmod a+x _receiver/C/sync
chmod a+x _receiver/C/gate

sudo chmod +x run.sh
sudo chmod +x kill.sh

sudo mkdir /ram

sudo ln -s /ram/pr.jpg _webDisplay/pr.jpg
sudo ln -s /ram/DOA_value.html _webDisplay/DOA_value.html
sudo ln -s /ram/spectrum.jpg static/spectrum.jpg
sudo ln -s /ram/sync.jpg static/sync.jpg
sudo ln -s /ram/doa.jpg static/doa.jpg
sudo ln -s /ram/pr.jpg static/pr.jpg
sudo ln -s /ram/DOA_value.html static/DOA_value.html

(cd _receiver/C && make)