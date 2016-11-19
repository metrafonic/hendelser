# hendelser

### Requirements
Requires a running Oracle SQL server. Credentals are to be added to server.py

### Installing:
```
npm install
```
### Running:
```
node server.js
```
## REST APIs
HTTP METHOD 	URI 	DESCRIPTION
POST 	/userprofiles 	Create a new user profile
GET 	/userprofiles 	Read all the user profiles
GET 	/userprofiles/:USER_NAME 	Read the profile of an user
PUT 	/userprofiles/:USER_NAME 	Update the profile of an user
DELETE 	/userprofiles/:USER_NAME 	Delete the profile of user specified in place of :user


## Docker
### Build image:
```
sudo docker build --no-cache -t metrafonic/hendelser .
```
