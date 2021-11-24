
<img width="121" alt="Screen Shot 2021-11-23 at 11 07 54" src="https://user-images.githubusercontent.com/92891587/143060494-2e40e832-e57e-426b-ade4-cda756e33736.png">


### Scaling Microservices

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. 

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl


### Run the project


1. Type the following terminal command to start minikube cluster : 

```
minikube start
```

2. To deploy this application in kubernetes run:
```
./run_kubernetes.sh
```

3. After you’ve called run_kubernetes.sh, and a pod is up and running, make a prediction using a separate terminal tab and run 
```
./make_prediction2.sh
```

4. Delete the cluster
```
minikube delete
```
