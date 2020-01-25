var.myvar
var.mymap["mykey"]
var.mylist[0]
element(var.mylist,1)
slice(var.mylist, 0,2)


####
ssh-keygen -f mykey
ssh 104.104.22.33 -i mykey -l demo


### to check how many cpu
cat /proc/cpuinfo
###
sudo apt-get install stress -y
stress --help
stress --cpu 1
ps aux | grep stress

