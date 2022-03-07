#!/bin/bash

echo "
-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
-     ..| subdomain-apiST v1.0 |..     -
-       site: securitytrails.com       -
-            Twitter: az7rb            -
-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	"
	 
	Subdomain() {
	requestSub="$(curl -s --request GET \
		 --url https://api.securitytrails.com/v1/domain/$domain/subdomains \
		 --header 'APIKEY: x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0' \
		 --header 'Accept: application/json')"
		 
			 echo $requestSub > apiST.txt
			 cat apiST.txt  | jq .subdomains | awk -v domain=$domain -F\" '{print $2 "." domain}' | sed '$d' | sed '1d'  > output/$domain.txt
			 echo -e "\e[32m[+]\e[0m "$(cat apiST.txt | jq .subdomain_count | awk '{print "I found in API "" \033[31m"  $0 "\033[0m"" subdomain" }')
			 rm apiST.txt
			 echo ""
			 cat output/$domain.txt
			 echo ""
			 echo -e "\e[32m[+]\e[0m Total Save will be \e[31m"$(cat output/$domain.txt | wc -l)"\e[0m subdomains only"
			 echo -e "\e[32m[+]\e[0m Output saved in output/$domain.txt"
}	 

if [ -z $1 ]
        then
                echo "USAGE: $0 [domain.com] "
                exit
        else
                domain=$1
fi

if [ -z $2 ]
then
Subdomain
fi
