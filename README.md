Custom VPC deployed in AWS using Terraform.
Deployed in multiple AZ's (availability zones) to allow for fault tolerance support.
12 subnets (IPv4 and IPv6) configured for the database, application, web, and reserved ranges.
03/09 - Public ip access assigned towards the web subnets while keeping the database and application private.
03/09 - Internet gateway and a route table with route associations. 
04/09 - Cleaned up code & added variables/tags.
05/09 - Added private internet connection capabilities via the NAT gateway with the required elastic Ip's and routes.