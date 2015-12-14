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

`show dbs`  
List databases.

`show collections`  
List collections.

`use <database>`  
Choose database.

### Insert

`db.<collection>.insert(<JSON data>)`  
Insert data.

`db.<collection>.save(<JSON data>)`  
Save (insert if new or update if existing).

### Find

`db.<collection>.find(<query>, <fields>)`  
Find records (leave query blank to bring all). Returns a cursor (.hasNext(), .next()).
Example: `db.pokemons.find({ name: 'Pikachu' }, { name: 1, description: 1 })`

`db.<collection>.findOne(<query>)`  
Find one record. Returns an object.

#### Operators

`$lt, $lte, $gt, $gte`  
`$or, $nor, $and, $nand`  

Example:

```javascript
db.pokemons.find({
    $and: [{
        attack: { $gt: 5 }
    }, {
        defense: { $lt: 2 }
    }]
})
```

`$exists`  

Example: `db.pokemons.find({ description: { $exists: true }})`
