(project_part_one)  
custom vpc deployed in aws using terraform.  
deployed in multiple az's (availability zones) to allow for fault tolerance support.  
12 subnets (IPv4 and IPv6) configured for the database, application, web, and reserved ranges.  

(project_part_two)  
03/09 - public ip access assigned towards the web subnets while keeping the database and application private.  
03/09 - internet gateway and a route table with route associations.  
04/09 - cleaned up code & added variables/tags.  
05/09 - added private internet connection capabilities via the nat gateway with the required elastic ip's and routes.  
06/09 - added private route table connections and have completed private internet connection testing via database, reserved, and application environments.