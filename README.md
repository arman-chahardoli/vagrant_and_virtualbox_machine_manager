##  Vagrant & Virtualbox machine manager

Assume you have 6 vagrant and 2 virtualbox(GUI) machines and **they are running now**, execute vagrant\_and\_virtualbox\_machine\_manager.sh

result is :

```plaintext
$ vagrant_and_virtualbox_machine_manager.sh

RUNNING MACHINES :
ansible_controller_1696837751781_72483
oracle_default_1699023395064_10824
prometheus_default_1699716287217_39980
test_debian
docker_docker_node_1_1695752634405_90839
docker_docker_node_2_1695752724745_86770
test_freebsd
redis_default_1696808322912_68194


which action on all virtualbox machines?

	1- savestate
	2- poweroff 
	3- shutdown (force)
	4- reset

other to exit

? 1
0%...10%...20%...30%...40%...50%...60%...70%...80%...90%...100%
...
```

all of them is saved, you can do other things, set other machines, power off your computer & … 

I always have these aliases in my ~/.bashrc :

```plaintext
alias vm='/home/vagrant_and_virtualbox_machine_manager.sh'
alias vg='vagrant global-status'
```
