# MyJudo   [![Build Status](https://travis-ci.org/lancew/MyJudo.svg?branch=master)](https://travis-ci.org/lancew/MyJudo) [![Kritika Analysis Status](https://kritika.io/users/lancew/repos/1285814063416590/heads/master/status.svg)](https://kritika.io/users/lancew/repos/1285814063416590/heads/master/)

This is an experimental website using Perl6 programming language and cro.

Now with DOCKER!

Run a built image:
```
docker run -p 8080:10000 --mount type=bind,source="/db/myjudo.db",target="/db/myjudo.db" myjudo perl6 -Ilib service.p6
```

Build an image:
```
docker build -t myjudo .
```





---
First install `sqlite3` and make sure by running `sqlite3 --version`
that the one you have is greater than to `3.8.3`.

Then install needed modules with:

```
zef install --deps-only .
```

The app uses the db/myjudo.db and you may need to manually apply the latest schema.

Schema's are being stored in the db directory and you can cut and paste the various
CREATE TABLE... commands after running sqlite3 db/myjudo.db

For the password reset function to work you will need to add SMTP credentials

And then start the site locally with:
```
bailador watch bin/app.pl6
```

or with
```
bailador --config=host:0.0.0.0,port=3131 easy bin/app.pl6
```

If you want to bind it to any address and run in an alternate server
using the `HTTP::Easy` module for serving.

You can run tests with:
```
 prove6 -I=lib -v t/*

```

Currently running at http://myjudo.net

This app is serving as basis for my November 2017 workshop at the London Perl Workshop on Bailador:

http://act.yapc.eu/lpw2017/talk/7213


[Scuttlebutt](https://www.scuttlebutt.nz/)  user?, you can also clone this repo via ssb://%MkBUFeRs7fTN2lAUXuYYaK3i9ln29vBisvJnhEcx4KA=.sha256
