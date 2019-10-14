VPS Startup Script
===========

A simple bash script for building basic enviorment

Install
------

- Usage

	- Debian / Ubuntu:
	```bash
		sudo apt-get install git && git clone https://github.com/HelloRaymond/vps_startup.git
		cd vps_startup.git && sudo bash ./startup.sh
	```
	CentOS:
	```bash
		yum install git && git clone https://github.com/HelloRaymond/vps_startup.git 
		cd vps_startup.git && bash ./startup.sh
	```

Introduction
-------------
- Install Docker-CE and some tools.
- Deploy Docker containers, detailed configuration command is docker_deploy.sh, just deploy baota_panel defaultly, you can modify it at will.
- Configure SSH
	- Change the SSH port to 8022 and configure key login.
	- If you have an existing publickey file, please put it in vps_startup.git and name it authorized_keys.pub. Otherwise, key pairs will be generated automatically in 42343.
	- Note:
		- If you provide an existing public key file, the script will configure to disable password login
		- otherwise you will need to manually execute the following commands to disable password login
        `sed 's/PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config`
- Configuring firewalls
	- only accept ports: 80 443 8888 888 8022
- Install NetworkSpeeder
	- If kernel version is higher than 4 it will enable bbr, otherwise it will install serverspeeder
> Note: If your current kernel is not appropriate,this script will change it to a appropriate one, you need reboot and run this script again in order to install serverspeeder correctly.



