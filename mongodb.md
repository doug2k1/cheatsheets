# MongoDB

## Start/stop

Starts deamon:
```
mongod
``` 

Starts client:
```
mongo [database]
``` 

## Import/export

Export data to JSON file:
````
mongoexport -d <database> -c <collection> -o <filename>
```

Import data from JSON file:
````
mongoimport -h [hostname:port] -d <database> -c <collection> --file <filename> [--drop]
```
