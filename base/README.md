{{ cookbook['name'] }} Cookbook
===============================
Check [here](TROUBLESHOOTING.md) for troubleshooting help

Environments
------------

###Development
- `Full Name` - `development`
- `Short Name` - `dev`

Ex:
dev-web-01

###Staging
- `Full Name` - `staging`
- `Short Name` - `stg`

Ex:
stg-web-01

###Production
- `Full Name` - `production`
- `Short Name` - `prd`

Ex:
prd-web-01

Server Types
------------
Document the various server roles along with their naming
schema and run list here.

###Web Server
- `Naming` - `<env>-web-<#>`
- `Run list` - `recipe[{{ cookbook['name'] }}]`
