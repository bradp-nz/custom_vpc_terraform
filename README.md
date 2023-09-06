Project part one:  
- Custom multi-tier vpc deployed in aws using terraform.  
- Deployed in multiple az's (availability zones) to allow for fault tolerance support.  
- 12 subnets (IPv4 and IPv6) configured for the database, application, web, and reserved ranges.  

Project part two:  
- Public ip access assigned towards the web subnets while keeping the reserved, database, and application within a private subnet (03/09).  
- Added internet gateway and a route table with the necessary associations (03/09).  
- Cleaned up code & added variables/tags (04/09).  
- Added private internet connection capabilities via the nat gateway along with the required elastic ip's and route tables (05/09).  
- Added private route table connections and have completed private internet connection testing via database, reserved, and application environments while keeping the web environment public (06/09).