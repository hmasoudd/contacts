# contacts
This Repository Contains Mulesoft Project source Code and documentations.

# Introduction
- This is a Mulesoft Application is currently deployed at Cloudbub and Exchange Documentation are also available
- Postman Collection file Contact-Collection.postman_collection.json is available to test all operations and paining to Cloudhub Instance. Please import this file using postman and review and tests request to test the SYS API.
- AWS Mysql database instance in are currently used as RDS. please feel free to brows the tables and data . The connection details are :
  	host: "contactsdb.czld4orqrhcv.us-east-2.rds.amazonaws.com"
  	port: "3306"
  	user: "admin"
  	password: "V!0let123"
  	database: "ContactsDB"
- Database Tables DDL file createContactsTables.sql is available in same README.md directory to review table details.

# Notes
- Please note this is a System API only that are designed as a fine grained API Services  to all possible needs to serve different Experience APIs as needed. I am currently building an Experience API and ReactJS Client application on top of this System API.ReactJs application will also be deployed to AWS. But due to time constrains and as I promised to deliver this API after the weekend.

- Please let me know if you would like to see the finalized code after building the Experience API along with ReactJS code.



# Code

- Please clone the code  from https://github.com/hmasoudd/contacts and import the sys-contacts-api into Anypoint Studio

- please visit public exchange portal for API at https://anypoint.mulesoft.com/exchange/portals/sonic-development

- I have not encrypted the password property but the global element is secured properties for future use. 

- Please start the application from Anypoint Studio if you would like to locally run/debug the code. For local please use http://localhost:8081/api as application root context. 

- Code is functional you can create, update and Retrieve data

- Deletion is designed as setting active flag to false. So records stays in database but is no longer visible to apply CUR operations.

- Due to very limited time to develop that code , I have not optimized the code for performance nor  applying transaction management ACID capabilities.

