var.myvar
var.mymap["mykey"]
var.mylist[0]
element(var.mylist,1)
slice(var.mylist, 0,2)


####
# Generate ssh key
```
ssh-keygen -t rsa -b 4096 -f mykey

# Ssh into virtual machine
The output of terraform shows the public ip
```
ssh demo@PUBLIC_IP_HERE-i mykey


### to check how many cpu
cat /proc/cpuinfo
###
sudo apt-get install stress -y
stress --help
stress --cpu 1
ps aux | grep stress

