## Using terraform to deploy a dockerized rails app with a few commands

This is only an example which deploys : https://github.com/felipeamarante/ruby-rails-sample in AWS using terraform.

### Usage

  * Download and install latest version of terraform 
  * change your desired parameters at env.tf (vpc, subnet, version) 
  * terraform init 
  * terraform apply 
  * terraform show | grep -i dns_name 
  * Place the dns_name value at your browser and access the app. 
  


#### Info!
  * This template will create resources in your AWS Account. Please run ```terraform destroy``` to cleanup the resources. 
  * I'm using user-data to deploy the app, plesae check ```templates/user_data.tpl``` for more information
