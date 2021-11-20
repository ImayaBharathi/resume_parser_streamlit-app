sudo apt update 
sudo apt upgrade
gcloud source repos clone abstractive-summarization --project=imaya-327307
sudo apt-get install build-essential libssl-dev libffi-dev python-dev -y
sudo apt-get install python3-venv -y
python3 -m venv env
source env/bin/activate
python3 -m pip install pip==20.3.4 setuptools wheel
pip install -r requirements.txt 
python .output/app.py