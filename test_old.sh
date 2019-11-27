#! /bin/sh

db_passwd=$1

if [ -z "$db_passwd" ]
then
	echo "Please enter the correct format. Script <db_passwd>";
	exit;
else
	echo "Continuing..."
fi

ansible-playbook playbook.yml  -u psggcs -k --e "db_passwd=$1"

