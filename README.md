(project_part_one)  
Custom VPC deployed in AWS using Terraform.  
Deployed in multiple AZ's (availability zones) to allow for fault tolerance support.  
12 subnets (IPv4 and IPv6) configured for the database, application, web, and reserved ranges.  

(project_part_two)  
03/09 - Public ip access assigned towards the web subnets while keeping the database and application private.  
03/09 - Internet gateway and a route table with route associations.  
04/09 - Cleaned up code & added variables/tags.  
05/09 - Added private internet connection capabilities via the NAT gateway with the required elastic Ip's and routes.  
06/09 - Added private route table connections and have completed private internet connection testing via database, reserved, and application environments.