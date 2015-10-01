
SMTP Blackhole server
============================
This is a simple postfix server configured to discard all messages.
It's handy for development, as you can do some basic integration testing without sending email.

This is based on the postfix image by [https://github.com/catatnight/docker-postfix](https://github.com/catatnight/docker-postfix)

The postfix blackhole example config was taken from [https://www.vanimpe.eu/2012/04/03/run-postfix-as-a-blackhole-mail-server-open-relay/](https://www.vanimpe.eu/2012/04/03/run-postfix-as-a-blackhole-mail-server-open-relay/).

Running 
============================

`docker run --name blackhole -d -p 25:25 simap/smtpblackhole`

Sending email
============================
A user is created automatically:
username: blackhole@mail.blackhole.local
passowrd: blackhole

The host will be whatever your docker host is running on, and config depends on your client. e.g.:
`smtp://blackhole@mail.blackhole.local:blackhole@192.168.99.100:25/`

Advanced
============================

All of the configuration options of catatnight/docker-postfix are supported and env passed to the image will override the default user. It's possible to get ssl and other users working. For more information see: [catatnight/docker-postfix README](https://github.com/catatnight/docker-postfix/blob/master/README.md)
