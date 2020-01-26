# Setup MySQL Database

# Sign in
```
az login
```

# Generate ssh key
```
ssh-keygen -t rsa -b 4096 -f mykey
```
# Run Terraform init
```
terraform init
```

# Run Terraform apply
```
terraform apply
```

# Ssh into virtual machine
The output of terraform shows the public ip

```
ssh demo@104.45.4.100 -i mykey
```

# Install MySQL client & Connect to MySQL from virtual machine
The output of terraform shows the dns of the MySQL

```
sudo apt-get update
sudo apt-get install mysql-client-5.7
mysql -h mysql-training2020.mysql.database.azure.com -u mysqladmin@mysql-training2020 -p
show databases;
```

# Cleanup Demo
```
terraform destroy
```