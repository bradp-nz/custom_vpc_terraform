Project part one:  
- Custom multi-tier vpc deployed in aws using terraform.  
- Deployed in multiple az's (availability zones) to allow for fault tolerance support.  
- 12 subnets (IPv4 and IPv6) configured for the database, application, web, and reserved ranges.  

Project part two:  
- Public subnets assigned towards the web environments for incoming/outgoing traffic - while keeping the reserved, database, and application environments within a private subnet for outgoing traffic only (03/09).  
- Added internet gateway and a route table with the necessary route table associations (03/09).  
- Cleaned up code & added variables/tags (04/09).  
- Added private internet connection capabilities via the nat gateway along with the required elastic ip's and route tables for outgoing traffic only (05/09).  
- Added private route table connections to allow for the database, reserved, and application environments to allow only outbound traffic (06/09).
- Testing completed internally within the private environments to confirm that outbound traffic is functioning via the NAT gateway (06/09).