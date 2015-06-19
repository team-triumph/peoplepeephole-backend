== README
API

Register User



* Register User
* Login User
* Show Post

Path: POST '/users/register'

Params:
  username: a string
  first_name: a string
  last_name: a string
  email: a string
  password: a string

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  {"user":{"id":2,"username":"pwood1285",
  "first_name":"Philip","last_name":"Wood","email":"pwood1285@gmail.com",
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
  {
  "errors": [
    "errors":["Email has already been taken"
  ]
  }


Login

Path: POST '/users/login'

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


Show Post

Path: GET '/posts/:id'

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



Sign Up

Path: POST '/posts/:id/guesses'

Params:
  username: a string
  first_name: a string
  last_name: a string
  email: a string
  password: a string

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  {"guesses":{"user_id":2,"post_id":2,"guess":"guess","point":null}}
  {
  "errors": [
    "errors":["Email has already been taken"
  ]
  }



post 'posts', to: 'posts#create'
delete 'posts', to: 'posts#delete'

get 'scoreboard', to: 'users#scoreboard'


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
