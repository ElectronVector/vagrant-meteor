This is a Vagrant configuration for running Meteor apps on Ubuntu 14.04, for use with a Windows host.

## Background

By default, a Meteor app can't be run in the host-shared vagrant folder, because there are issues with the permissions for MongoDB. To work around this, the Vagrantfile enables symlinks on the shared folder.

The Vagrantfile also:
- Provisions the VM by installing Meteor.
- Enables port forwarding on the VM for the default meteor port.

**Note: On Windows, the shell that runs `vagrant up` and `vagrant ssh` must be run as administrator.**

## Instructions

Start up the Vagrant VM:

```
> vagrant up
```

SSH into the Vagrant VM:

```
> vagrant ssh
```

Create a meteor project in the /vagrant shared folder:

```
$ cd /vagrant
$ meteor create myapp
```

Run the script to setup the local folder:

```
$ ./setup-local.sh myapp 
```

Run your meteor app:

```
$ cd myapp
$ meteor
```

Point a browser on your host to [http://localhost:3000](http://localhost:3000). You should see the meteor app.