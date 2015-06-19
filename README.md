# **People Peephole API**

#### **Base URL: https://aqueous-brushlands-9148.herokuapp.com/**

## **User**
* [Register User](#register-user)
`POST '/users/register'`
* [Login User](#login-user)
`POST '/users/login'`
* [Get Scoreboard](#get-scoreboard)
`GET '/scoreboard/'`

## **Post**
* [Show Post](#show-post)
`GET'/post/:id'`
* [Create Post](#create-post)
`POST '/posts/'`
* [Delete Post](#delete-post)
`DELETE '/posts/'`

## **Guesses**
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
{"user":{"id":2,
  "username":"pwood1285",
  "first_name":"Philip",
  "last_name":"Wood",
  "email":"pwood1285@gmail.com",
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
```
Example failure:
```json
  {"errors": ["errors":["Email has already been taken"]]}
```


### **Login User**

`POST '/users/login'`

Params:
username: a string
email: a string
password: a string
Response:

Status Code: 201 if successful, 422 if unsuccessful

Example success:  {"user":{"id":2,"username":"pwood1285",
"first_name":"Philip","last_name":"Wood","email":"pwood1285@gmail.com",
"access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}

Example failure:
{
"errors": [
  "Email has already been taken"
]
}


### **Get Scoreboard**

`GET '/scoreboard/'`

Params:
  email: a string
  password: a string

Response:

Status Code: 201 if successful, 422 if unsuccessful
Example success:  {"user":{"id":2,"username":"pwood1285",
  "first_name":"Philip","last_name":"Wood","email":"pwood1285@gmail.com",
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
Example failure:
{
"errors": [
  "Email has already been taken"
]
}

### **Show Post**

GET '/posts/:id'

Params:
  email: a string
  password: a string

Response:

Status Code: 201 if successful, 422 if unsuccessful
Example success:  {"user":{"id":2,"username":"pwood1285",
  "first_name":"Philip","last_name":"Wood","email":"pwood1285@gmail.com",
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
Example failure:
{
"errors": [
  "Email has already been taken"
]
}


### **Create Post**

`POST '/posts/'`

Params:
  email: a string
  password: a string

Response:

Status Code: 201 if successful, 422 if unsuccessful
Example success:  {"user":{"id":2,"username":"pwood1285",
  "first_name":"Philip","last_name":"Wood","email":"pwood1285@gmail.com",
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
Example failure:
{
"errors": [
  "Email has already been taken"
]
}


### **Delete Post**

`DELETE '/posts/'`

Params:
  email: a string
  password: a string

Response:

Status Code: 201 if successful, 422 if unsuccessful
Example success:  {"user":{"id":2,"username":"pwood1285",
  "first_name":"Philip","last_name":"Wood","email":"pwood1285@gmail.com",
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
Example failure:
{
"errors": [
  "Email has already been taken"
]
}


### **Create Guess**

`GET '/scoreboard/'`

Params:
  email: a string
  password: a string

Response:

Status Code: 201 if successful, 422 if unsuccessful
Example success:  {"user":{"id":2,"username":"pwood1285",
  "first_name":"Philip","last_name":"Wood","email":"pwood1285@gmail.com",
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
Example failure:
{
"errors": [
  "Email has already been taken"
]
}


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
