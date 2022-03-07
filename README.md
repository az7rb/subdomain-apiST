## subdomain-apiST

SecurityTrails has an extremely robust API that can be used to enumerate subdomains.
This little script is designed to query their API and parse the results into a file that is ready to be sent to tools like httpx!
Usage is pretty simple.

![alt text](https://i.ibb.co/qsYkdqb/apikey.png)

```
First you need to register at securitytrails.com and get an API key. 
```
How to use:

Step 1:
```
git clone https://github.com/az7rb/subdomain-apiST.git
```
Step 2:
```
cd subdomain-apiST/
```
Step 3:
```
Replace x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0 with your api code
```
![alt text](https://i.ibb.co/vjyg7my/Screenshot.png")

Step 4:
```
chmod +x subdomain-apiST.sh
```
Step 5:
```
./subdomain-apiST.sh [domain.com]
```

This will write all of the enumerated subdomains to the specified output file and will be ready to be passed to other tools.

Happy hunting!
