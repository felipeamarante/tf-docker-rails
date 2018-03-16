#!/bin/bash +xe

# Only a script example, not production ready with error checking and etc...

exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

echo "Running User data Bootstrap for application deployment version : ${version}"

yum update -y
yum install -y docker git
service docker start
sudo usermod -a -G docker ec2-user
sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /bin/docker-compose
sudo chmod +x /bin/docker-compose
git clone https://github.com/felipeamarante/ruby-rails-sample.git
cd ruby-rails-sample/
docker-compose up -d
docker-compose run web rake db:create

