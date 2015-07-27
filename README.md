# **Picture Guessing Game API**
* Ruby version
__ruby 2.1.5p273__

Picture Guessing Game is a game where a user views images and trys to guess what they are, using a multiple format. Only logged in users have the ability to upload photos to their account, but all users can play the game. If the user guesses the correct answer, they receive a point and the image it removed.  

### **Base URL: https://aqueous-brushlands-9148.herokuapp.com/**


### **User**
* [Get All Users](#get-all-users)
`GET '/users'`
* [Register User](#register-user)
`POST '/users/register'`
* [Login User](#login-user)
`POST '/users/login'`
* [Get Scoreboard](#get-scoreboard)
`GET '/scoreboard'`

### **Post**
* [Get All Posts](#get-all-posts)
`GET '/posts'`
* [Show Post](#show-post)
`GET'/post/:id'`
* [Create Post](#create-post)
`POST '/posts'`
* [Delete Post](#delete-post)
`DELETE '/posts/:id'`

### **Guesses**
* [Create Guess](#create-guess)
`POST 'posts/:id/guesses'`



### **Get All Users**

`GET '/users'`

Params:
  * none
  * Returns and array of all users


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

`GET '/scoreboard'`

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
  {"errors": ["errors":["Error With Scoreboard"]]}
```

### **Get All Posts**

`GET '/posts'`

Params:
  * none
  * Returns and array of all posts


Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{
  "post": [
    {
      "image": "www.photos.com/photos1",
      "user_id": 1,
      "answer": "answer",
      "complete": false
    },
    {
      "image": "www.photos.com/photos2",
      "user_id": 2,
      "answer": "answer",
      "complete": false
    },
    {
      "image": "www.photos.com/photos3",
      "user_id": 1,
      "answer": "answer",
      "complete": false
    },
    {
      "image": "www.photo.com/photo",
      "user_id": 2,
      "answer": 1,
      "complete": false
    },
  ]
}
```
Example failure:
```json
  {"errors": ["errors":["Error when loading posts"]]}
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

`POST '/posts'`

Params:
  * image: a string
  * answer: a string
  * answer_1: a string
  * answer_2: a string
  * answer_3: a string


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
{"message":"Post deleted"}
```
Example failure:
```json
{ "message":"ERROR" }
```



### **Create Guess**

`POST 'posts/:id/guesses'`

Params:
  * guess: "string"

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "user":{"id":2,
  "guess":"A",
  "point":1,
  "user_id":3,
  "post_id":6,
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
```
Example failure:
```json
{ "message":"Access Token Not Found" }
```
