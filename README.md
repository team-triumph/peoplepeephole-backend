# **Guess What API**

#### **Base URL: https://aqueous-brushlands-9148.herokuapp.com/**

### **User**
* [Register User](#register-user)
`POST '/users/register'`
* [Login User](#login-user)
`POST '/users/login'`
* [Get Scoreboard](#get-scoreboard)
`GET '/scoreboard/'`

### **Post**
* [Show Post](#show-post)
`GET'/post/:id'`
* [Create Post](#create-post)
`POST '/posts/'`
* [Delete Post](#delete-post)
`DELETE '/posts/:id'`

### **Guesses**
* [Create Guess](#create-guess)
`POST 'posts/:id/guesses'`


### **Register User**

`POST '/users/register'`

Params:
  * username: a string
  * first_name: a string
  * last_name: a string
  * email: a string
  * password: a string

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "user":{"id":3,
  "username":"JDrama2000",
  "first_name":"Johnny",
  "last_name":"Drama",
  "email":"jdrama1@gmail.com",
  "access_token":"bec50786aa082642fd9757845998f57d"}}
```
Example failure:
```json
  {"errors": ["errors":["Email has already been taken"]]}
```


### **Login User**

`POST '/users/login'`

Params:
  * username: a string
  * first_name: a string
  * last_name: a string
  * email: a string
  * password: a string

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "user":{"id":3,
  "username":"JDrama2000",
  "first_name":"Johnny",
  "last_name":"Drama",
  "email":"jdrama1@gmail.com",
  "access_token":"bec50786aa082642fd9757845998f57d"}}
```
Example failure:
```json
{ "message":"Invalid Login" }
```



### **Get Scoreboard**

`GET '/scoreboard/'`

Params:
  * none
* Returns scoreboard in json

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "user":{"id":2,
  "username":"JDrama2000",
  "points":20 }}

```
Example failure:
```json
  {"errors": ["errors":["Email has already been taken"]]}
```


### **Show Post**

GET '/posts/:id'

Params:
  * none
* Returns a single post

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "post":{"image":"image file",
  "user_id":3,
  "answer":"correct answer",
  "complete":false,
  "answer_1":"incorrect answer",
  "answer_2":"incorrect answer",
  "answer_3":"incorrect answer"}}
```
Example failure:
```json
{ "message":"Access Token Not Found" }
```



### **Create Post**

`POST '/posts/'`

Params:
  * user_id: a integer
  * image: a string
  * answer: a string
  * answer_1: a string
  * answer_2: a string
  * answer_3: a string
  * answer_3: a boolean

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "post":{"id":6,
  "image":"null",
  "user_id":3,
  "answer":"correct",
  "complete":false,
  "answer_1":"incorrect",
  "answer_2":"incorrect",
  "answer_3":"incorrect"}}
```
Example failure:
```json
{ "message":"Access Token Not Found" }
```



### **Delete Post**

`DELETE '/posts/:id'`

Params:
  * none
* Removes validated users' post

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "user":{"id":2,
  "username":"JDrama2000",
  "first_name":"Johnny",
  "last_name":"Drama",
  "email":"jdrama@gmail.com",
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
```
Example failure:
```json
  {"errors": ["errors":["Email has already been taken"]]}
```



### **Create Guess**

`GET '/scoreboard/'`

Params:
  * username: a string
  * first_name: a string
  * last_name: a string
  * email: a string
  * password: a string

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "user":{"id":2,
  "username":"JDrama2000",
  "first_name":"Johnny",
  "last_name":"Drama",
  "email":"jdrama@gmail.com",
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
```
Example failure:
```json
  {"errors": ["errors":["Email has already been taken"]]}
```



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
