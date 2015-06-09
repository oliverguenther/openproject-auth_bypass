# OpenProject Auth Bypass

This plugin overrides the Sys API Basic Authentication for externally authenticated Apache directives.

**Warning: Do not install unless the use-case below applies**

1. You use the Apache Module `OpenProjectAuthentication`
2. You have an Apache configuration that provides **external** authentication of users (LDAP, Radius, ... )
3. You want to determine the authorization status of an **authenticated** username with OpenProject

This plugin patches the `SysController` and removes the internal user Basic Auth.
Instead, only the username passed is relevant and used for authrorization check.


## Copyrights & License
OpenProject Auth Bypass is completely free and open source and released under the [MIT License](https://github.com/oliverguenther/openproject-auth_bypass/blob/devel/LICENSE).

Development has been funded by the [ISP Fachbereich Informatik, Technische Universität Darmstadt](http://www.isp.informatik.tu-darmstadt.de)

Copyright (c) 2015 Oliver Günther (mail@oliverguenther.de)
