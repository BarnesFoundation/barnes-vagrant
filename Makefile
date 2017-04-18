test:
	@echo "Setting up everything and nothing at all..."

vagrant:
	@echo "Setting up your Vagrant workspace for the first time..."
	@if [ ! -d /vagrant/ops ]; \
	 then \
		mkdir ops;\
		#git clone git@github.com:barnesfoundation/barnes-ops.git /vagrant/ops/barnes-ops;\
	fi
	@/vagrant/ops/barnes-ops/vagrant/setup.sh

all-docs:
	@echo "Installing the docs..."
	@if [ ! -d /vagrant/docs ]; \
	 then \
	 mkdir docs;\
	 #git clone git@github.com:barnesfoundation/barnes-docs.git /vagrant/ops/barnes-docs;\
	fi

all-projects:
	@echo "Cloneing all the projects..."
	@if [ ! -d /vagrant/projects ]; \
	 then \
	 	mkdir projects;\
	 fi
	@git clone git@github.com:BarnesFoundation/CollectionWebsite.git /vagrant/projects/CollectionWebsite;\


all: vagrant docs projects
	@echo "Installing everything..."
