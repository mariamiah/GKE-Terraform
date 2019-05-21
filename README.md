#### GKE-Terraform
The purpose of this project is to spin up a kubernetes cluster in GCP using terraform

#### Register with GCP
- Navigate to the [Google console](https://console.cloud.google.com)
- Follow the step by step instructions to set up an account
- To successfully complete registration, enter your credit card details

#### Enable the Kubernetes API
- Inorder to start utilizing the `GKE(Google Kubernetes Engine)`, enable the API by selecting `API and Services` in the right hand side panel
- Search for `Kubernetes Engine API`
- Select `Enable`

#### Authenticate with gcloud
- Inorder to interact with the google console on the local terminal, there is need to install `gcloud`
- Follow this [link](https://cloud.google.com/appengine/docs/standard/go/download) to install gcloud
- Once the installation succeeds, login into the remote account using `gcloud auth login`
- This opens a browser window where you are prompted for the username and password.
- Once the login is successful continue to setting up the project
#### Set up the project
- Clone this repository by running `git clone https://github.com/mariamiah/GKE-Terraform.git`
- Navigate into the repository folder by typing `cd GKE-Terraform`
- Add a `terraform.tfvars` files in your root directory
- Populate the `terraform.tfvars` file with your specific variables as specified in the `terraform.tfvars.example` file
- Copy the service account key you created in the previous section and add it to your root directory
- Rename it to `serviceaccount.json`
- Run  `terraform init` to ensure that the project has been perfectly setup without errors
- Run `terraform plan -out <file-name>`. The `<file-name>` represents any name you would like to assign to your plan file
- Run `terraform apply <file-name>`
- This spins up the cluster on GCP

#### Destroy the project
Once you are done using the cluster, you can always pull it down by running:
- `terraform destroy`

