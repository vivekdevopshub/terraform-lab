# terraform-lab





Steps- (Integrated Terraform + Ansible + Jenkins ) :)
1) Need Jenkins to deploy the CI-CD pipeline. (Create a pipelineand use the Jenkinsfile)
2) Install Terraform , Ansible , Git as per requirement.
3) Install Plugin for Terraform , Ansible etc.
4) Configure Jenkins for the Tools. ()Path setup for terraform , ansible  ,jdk etc )
5) Create a online repo Ex- Github and place the required files for terraform and ansible in that.(Here we have 2 ansible files mediawiki.yaml and dev.inv and others for terraform  and 1 jenkinsfile)

6) For Access Part for terraform to create AWS resources - created a role and attached to the Jenkins Instance so that Jenkins Instance would becapable to create Infra with help of terraform.

7) For Ansible and new Mediawiki  server connectivity we saved the private-key file in Jenkins dashboard side.
8) Saved github code repo credentials.

From Terraform - Creted Infra and from ansible script we installed dependencies (softwares ) for Mediawiki app deployement.
               - Used Ansible modules and shell scripting for automation.
               - No Hardcoded credentials are used.
               

Improvements For Future - We can use Hashicorp vault for credential storage.
                        - More Modularization of terraform code to improve the Reusability.
                        - More Coding standards improvements in terraform side for security purpose.
                        - Variables should be used wherever possible.
                        - In Jenkins pipeline we can include tools for code analysise etc.
                        - We can use nexus to keep our specific thirparty softwares if required.
                        - Etc.


