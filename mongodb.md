# MongoDB

## Start/stop

`mongod`  
Starts deamon.

`mongo [database]`  
Starts client.

## Import/export

`mongoexport -d <database> -c <collection> -o <filename>`  
Export data to JSON file.

`mongoimport -h [hostname:port] -d <database> -c <collection> --file <filename> [--drop]` 
Import data from JSON file.

## Working with databases

OBS.: Commands inside mongo client.

List databases:
```
show dbs
```

List collections:
```
show collections
```

Choose database:
```
use <database>
```

### Insert

Insert data:
```
db.<collection>.insert(<JSON data>)
```

Save (insert if new or update if existing):
```
db.<collection>.save(<JSON data>)
```

### Find

Find records (leave query blank to bring all):
```
db.<collection>.find(<query>)
```
