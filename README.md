# couchdb2-vagrant

Building CouchDB2 from source can be a drag. This project will do all the hard work for you.


Install Vagrant, VirtualBox and git
---
* http://www.vagrantup.com
* https://www.virtualbox.org (don't worry about setting up any VMs as the steps below will cover this)
* http://git-scm.com


Set Up
---

    Edit /etc/hosts and add
      192.168.50.9 couchdb2.dev
    $ git clone https://github.com/redgeoff/couchdb2-vagrant
    $ cd couchdb2-vagrant
    $ vagrant up


Running CouchDB
---

    CouchDB is started automatically via systemd

To stop:

    $ sudo systemctl stop couchdb2

To restart:

    $ sudo systemctl restart restart

For systemd log:

    $ journalctl -u couchdb2


Accessing Fauxton
---

Visit http://couchdb2.dev:5984/_utils


For more info
---

See http://docs.couchdb.org/en/2.0.0
