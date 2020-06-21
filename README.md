# contacts
This Repository Contains Mulesoft Project source Code and documentations.

# Introduction
- These Are Two Mulesoft Applications ( Experience and System APIs) are currently deployed at Cloudhub and Exchange Documentation are also available.

- For Simplecity No Process API was needed as no orchestration or data collection was needed. Also both Exp and Sys API are exposing Same Interfaces as of current implemention. 

- Postman Collection file Contact-Collection.postman_collection.json is available to test all operations and pointing to The Experience API in Cloudhub Instance. Please import this file using postman and review and tests request to test the SYS API.

- AWS Mysql database instance in are currently used as RDS. please feel free to brows the tables and data . The connection details are :
  	host: "contactsdb.czld4orqrhcv.us-east-2.rds.amazonaws.com"
  	port: "3306"
  	user: "admin"
  	password: "V!0let123"
  	database: "ContactsDB"
- Database Tables DDL file createContactsTables.sql is available in same README.md directory to review table details.

# Notes
- Please note that I create Munit tests for Exp API Only and not all flows due to time limitations.
-  System API was designed as a fine grained API Services to all possible needs to serve different Experience APIs as needed. 
- Please let me know if you would like to see the finalized code after building the Experience API along with ReactJS code.

# Code

- Please clone the code  from https://github.com/hmasoudd/contacts and import Both exp-contacts-api and sys-contacts-api into Anypoint Studio

- please visit public exchange portal for API at https://anypoint.mulesoft.com/exchange/portals/sonic-development

- I have not encrypted the password property but the global element is secured properties for future use. 

- Please start the application from Anypoint Studio if you would like to locally run/debug the code. For local please use http://localhost:8081/api as application root context. 

- Code are completely functional in both APIs and can create, update and Retrieve data

- Deletion is designed as (Logical deletion ) by setting active flag to false. So records stays in database but is no longer visible to apply CUR operations.

