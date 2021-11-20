# resume_parser_v1_deployment


#### Deployment Steps

* Create a source repository in GCP
* Setup a cloud build trigger for the repository in GCP
* Create a Virtual Machine (VM) in GCP under `VM Instances`
* Clone the repository in VM
* Install docker from the following link
``` https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04 ```
* From here, there are two kinds of deployment we can make

##### 1) Setting up a server inside the VM
###### Run the follwing commands
* ```sudo apt update``` 
* ```sudo apt upgrade```
* ```sudo apt-get install build-essential libssl-dev libffi-dev python-dev```
* ```sudo apt-get install python3-venv```
* ```venv env```
* ```source env/bin/activate```
* cd <git folder name> in our its ```cd streamlit-deployment```
* ```python3 -m pip install pip==20.3.4 setuptools wheel```
* ```pip install -r requirements.txt``` 
* ```streamlit run app.py```


##### 2) Setting up a server using Docker
###### Run the follwing commands
* sudo docker pull <image name from GCP Container Registry>
* In ourcase its, ```sudo docker pull gcr.io/imaya-327307/streamlit-deployment:402796a0031dbdd89b37bb5f692e47b3bb819fb5```
* If pull command throws an error on invalid credentials, go to GCP Container Registry, in 'Settings' tab change the registry type from "Private" to "Public"
* Upon sucessful pull, run - ``sudo docker images``
* Based on the output from docker images, get the image id and then run
* ```sudo docker run <imageid>```

The commands are also given as shell files for easy access
* install-docker.sh
* setup-new-vm.sh

