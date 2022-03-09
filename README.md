### OctoEvents
Webhook to log all events on a specif project on github.

## Requirements

* Rails 2.7
* Postgresql
* Postman (Local test API)
* Ngrok (Local test)

Just configure the enviroment (It's necessary configure some env vars), and run 'rails s' to up the server.

To run local follow the ngrok documentation, and create a webhook on repository at github, adding the ngrok external url.

At the project you'l find a postman json file with the urls examples to be easier test.


##Endpoints
It's necessary use JWT token when communicate with API. The token will received on header after succeeded login.

* Register
```
POST /signup 
   {"user": {"email": "your.email@here.com, "password": "your_secure_password"}}
``` 
* Login
```
POST /signin
  {"user": {"email": "your.email@here.com, "password": "your_secure_password"}}
``` 

* List all issues ids
```
GET / 
```

* List all events in a issue
```
GET /issue/:id/events
```

When application received a POST on /, a event will be saved on database. The application doesn't have a filter or validation on received data, if is a trusted source.