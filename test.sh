#! /bin/sh

cluster=$1
db_type=$2
db_passwd=$3
db_name=$4
tab_name=$5

if [ $# -ne 5 ]
then
	echo "Please enter the correct format.";
	exit;
else
	echo "Continuing..."
fi


	ansible-playbook playbook.yml  -u psggcs -k --e "cluster=$1 db_type=$2 db_passwd=$3 db_name=$4 tab_name=$5"
