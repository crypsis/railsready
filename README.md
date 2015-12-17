#Rails Ready
###Ruby and Rails setup script for Linux and OSX
###Distros supported:
 * Ubuntu
 * CentOS 5 (utilizes the Fedora EPEL repo)
 * OSX (requires XCode/GCC to be installed. Install command line tools via XCode->preferences to install GCC)

#
###To run:
####Linux
  * `wget --no-check-certificate https://raw.githubusercontent.com/devathon/railsready/master/railsready.sh && bash railsready.sh`

####OSX
  * `curl -O https://raw.githubusercontent.com/devathon/railsready/master/railsready.sh && bash railsready.sh`

The script will ask if you want to build Ruby from source or install RVM

###What this gives you:
  * Homebrew (OSX only)
  * Ruby 2.1.0 latest patch level (installed to /usr/local/bin/ruby) or RVM running 2.1.0 latest patch level
  * libs needed to run Rails (sqlite, mysql, etc)
  * Bundler, Passenger, and Rails gems
  * Git

Please note: If you are running on a super slow connection your sudo session may timeout and you'll have to enter your password again. If you're running this on an EC2 or RS instance it shouldn't be problem.

Just install either NGINX or Apache, then run `passenger-install-nginx-module` or `passenger-install-apache2-module` from bash prompt, upload your app, point your vhost config to your apps public dir and go!

#
####Rails Ready now supports a "plugin" type system. The distro is detected and a corresponding "recipe" file is pulled down to run the distro specific setup steps. Check the recipes dir to see if your distro is supported. If you would like to add support for a system fork the repo, write a recipe, and submit a pull request. Take a look at recipes/ubuntu.sh for an idea of what to model your recipe after.

If you use this or have any suggestions let me know joshfng@gmail.com or @joshfng on Twitter
