test:
	@echo "Setting up everything and nothing at all..."


vagrant:
	@echo "Setting up your Vagrant workspace for the first time..."
	@if [ ! -d /vagrant/ops ]; \
	 then \
		mkdir ops;\
	fi
	@git clone git@github.com:BarnesFoundation/barnes-ops.git /vagrant/ops/barnes-ops;
	@git clone git@github.com:BarnesFoundation/barnes-ops-collection.git /vagrant/ops/barnes-ops-collection;
	@git clone git@github.com:BarnesFoundation/barnes-ops-elasticsearch.git /vagrant/ops/barnes-ops-elasticsearch;

	@/vagrant/ops/barnes-ops/vagrant/setup.sh
	@/vagrant/ops/barnes-ops-collection/vagrant/setup.sh
	@/vagrant/ops/barnes-ops-elasticsearch/vagrant/setup-es.sh


all-docs:
	@echo "Installing the docs..."
	@if [ ! -d /vagrant/docs ]; \
	 then \
	 mkdir docs;\
	fi
#@git clone git@github.com:barnesfoundation/barnes-docs.git /vagrant/ops/barnes-docs;\


all-projects:
	@echo "Cloneing all the projects..."
	@if [ ! -d /vagrant/projects ]; \
	 then \
	 	mkdir projects;\
	 fi
	@git clone git@github.com:BarnesFoundation/CollectionWebsite.git /vagrant/projects/CollectionWebsite;\


all: vagrant all-docs all-projects
	@echo "Installing everything..."
