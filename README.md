# barnes-vagrant

This is a Vagrant environment for all things [Barnes Foundation](http://www.barnesfoundation.org/). The idea here is that any developer can use this to get a new copy of most of the open source projects up and running on their system without much effort.

## How this Fits

This is strictly for local development purposes and should never be used directly in production.

## Getting Started

The first step is to install VirtualBox ( or your own favorite provisioner ) and Vagrant. Once you are up and running with Vagrant, you can simply clone this repository and do the standard `vagrant up` command to get going. After that, there is a `Makefile` that sort of controls things.


### Prerequisites

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](https://www.vagrantup.com/)

### Installation

Getting up and running is pretty simple. Just clone this repo to your local system, and then start the Vagrant box.

```
  $ git clone git@github.com:BarnesFoundation/barnes-vagrant.git
  $ cd barnes-vagrant
  $ vagrant up
```

## Using the Tools

Once your Vagrant machine is up and running, you will want to run a few initial scripts to get things installed. These should all be ran from within the Vagrant host system. Here is an example that will install everything. This only needs to be done one time. However, if you want to re-run things, that should work as well.

```
  $ vagrant ssh
  $ cd /vagrant
  $ make all
```

## Contributing

Coming soon.
