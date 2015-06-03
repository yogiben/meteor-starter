Meteor Starter
==============

A Meteor boilerplate with a lot packed in. Written in Coffeescript.

[Demo](http://starter.meteor.com) - For admin, log in with: `starter@meteorfactory.io` and `meteorrocks`

[Tutorials](http://learn.meteorfactory.io/meteor-starter/)

[MIT License](http://choosealicense.com/licenses/mit/)

### Setup ####

```
git clone https://github.com/yogiben/meteor-starter.git myapp
cd myapp
meteor
```

### What's included ###
#### Visitors####
* Sexy landing page

####Users####
* Login / Sign up etc. from [Accounts Entry](https://github.com/Differential/accounts-entry)
* Sign in with Facebook etc. with automatic photo import
* Profile Page - add a photo, location and other fields defined in schema
* Have a username (or not)
* Change their password and delete their account

#### Admin ####
* Manage everything via an [admin dahsboard](https://github.com/yogiben/meteor-admin/) (go to `/admin`)

#### Interactions ####
* Create / edit posts with image upload
* Favorite / comment on posts

### Customisation ###
Detailed tutorails coming soon.

First steps:
* Edit basic setting in `/both/_config/_config.coffee`
* Delete / modify HTML in `/client/views/home.html`
* Update colors in `/client/style/bootstrap-variables.less`
* Add / edit collections in `/both/collections/`
* Create routes and views in `/both/router.coffee` and `/client/views` folder

### Docker ###
Dockerize it

for Dev

```
docker build -t myrepo/meteordev -f Dockerfile-dev .
```

Run

```
docker run -it -p 3000:3000 --rm myrepo/meteordev
```


for Prod

```
docker build -t myrepo/mymeteorapp .
```

Run it
```
docker run --name mongodb -d mongo
docker run -it --rm -p 3000:3000 --link mongodb:db -e "MONGO_URL=mongodb://db" -e "ROOT_URL=http://localhost:3000" myrepo/mymeteorapp
```

### Screenshots ###
![alt tag](https://raw.githubusercontent.com/yogiben/meteor-starter/master/readme/meteor-starter-5.png)
![alt tag](https://raw.githubusercontent.com/yogiben/meteor-starter/master/readme/login.png)
![alt tag](https://raw.githubusercontent.com/yogiben/meteor-starter/master/readme/profile.png)
![alt tag](https://raw.githubusercontent.com/yogiben/meteor-starter/master/readme/like_comment.png)
