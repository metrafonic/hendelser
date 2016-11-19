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
|HTTP METHOD |	URI 	|DESCRIPTION|
|------------|-------|------------|
|POST |	/user_profiles |	Create a new user profile
|GET 	|/user_profiles |	Read all the user profiles
|GET 	|/user_profiles/:USER_NAME |	Read the profile of an user
|PUT 	|/user_profiles/:USER_NAME |	Update the profile of an user
|DELETE |	/user_profiles/:USER_NAME |	Delete the profile of user specified in place of :user


## Docker
### Build image:
```
sudo docker build --no-cache -t metrafonic/hendelser .
```
