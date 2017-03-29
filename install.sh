sudo apt-get install libgstreamer1.0-dev gstreamer1.0-plugins-good gstreamer1.0-tools gstreamer1.0-pulseaudio
cd ~/tools/kaldi-master/src/gst-plugin/
make depend
make -j 4
sudo apt-get install pip python-yaml python-gi
pip install tornado==4.4.2 ws4py==0.3.2 PyYAML==3.10
cd ~/tools/
git clone https://github.com/franciscovargas/kaldi-gstreamer-server.git
cd ./kaldi-gstreamer-server/
export GST_PLUGIN_PATH=~/tools/kaldi/src/gst-plugin
# python kaldigstserver/master_server.py --port=8888
# gst-inspect-1.0 onlinegmmdecodefaster
# python kaldigstserver/worker.py -u ws://localhost:8888/worker/ws/speech -c sample_worker.yaml
# python kaldigstserver/client.py -r 32000 ~/tools/kaldi-gstreamer-server/test/data/english_test.raw

