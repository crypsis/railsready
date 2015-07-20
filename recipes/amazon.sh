#!/bin/bash
#
# Rails Ready
#
# Author: Josh Frye <joshfng@gmail.com>
# Licence: MIT
#
# Contributions from: Wayne E. Seguin <wayneeseguin@gmail.com>
# Contributions from: Ryan McGeary <ryan@mcgeary.org>
#

ruby_version=$1
ruby_version_string=$2
ruby_source_url=$3
ruby_source_tar_name=$4
ruby_source_dir_name=$5
whichRuby=$6
script_runner=$(whoami)
railsready_path=$7
log_file=$8

#epel_repo_url="http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm"

#echo "vars set: $ruby_version $ruby_version_string $ruby_source_url $ruby_source_tar_name $ruby_source_dir_name $whichRuby $railsready_path $log_file"

# Add the EPEL repo if centos
#echo -e "\n=> Adding EPEL repo..."
#sudo rpm -Uvh $epel_repo_url
#echo "==> done..."

# Install build tools
echo -e "\n=> Installing build tools..."
sudo yum install -y gcc-c++ patch \
 readline readline-devel zlib zlib-devel \
 libyaml-devel libffi-devel openssl-devel \
 make automake bash curl libcurl-devel sqlite-devel mysql-devel >> $log_file 2>&1
echo "==> done..."

# Install mysql server
echo -e "\n=> Installing mysql server..."
sudo yum install -y mysql-server >> $log_file 2>&1
sudo service mysqld start >> $log_file 2>&1
echo "==> done..."

# Install Git
echo -e "\n=> Installing git..."
sudo yum install -y git >> $log_file 2>&1
echo "==> done..."
