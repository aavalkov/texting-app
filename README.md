#Tester
This app allowes users to send texts using the Twilio API.

##Authors
[Anna Valkov](http://github.com/aavalkov) and [Keebz](http://github.com/keebz)

##Setup
You will need to create an account through Twilio. The basic free account will allow you to send texts(to verified numbers) through a phone number that Twilio provides you with.

In your terminal, clone the repo


Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Insert your credentials from Twilio:

create a .env file and fill it with the following information:

TWILIO_ACCOUNT_SID=*** inset your account sid number
TWILIO_AUTH_TOKEN=*** insert the auth token you were assigned


Install all the dependencies:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Finally, start the rails server:

```console
$ rails s
```
It should now be available at `localhost:3000`.

##License
MIT
