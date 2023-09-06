project part one:  
- custom vpc deployed in aws using terraform.  
- deployed in multiple az's (availability zones) to allow for fault tolerance support.  
- 12 subnets (IPv4 and IPv6) configured for the database, application, web, and reserved ranges.  

project part two:  
- public ip access assigned towards the web subnets while keeping the reserved, database, and application within a private subnet (03/09).  
- added internet gateway and a route table with the necessary associations (03/09).  
- cleaned up code & added variables/tags (04/09).  
- added private internet connection capabilities via the nat gateway along with the required elastic ip's and route tables (05/09).  
- added private route table connections and have completed private internet connection testing via database, reserved, and application environments while keeping the web environment public (06/09).