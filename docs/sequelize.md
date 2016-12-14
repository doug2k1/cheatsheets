# Sequelize

## CLI

`$ npm i sequelize-cli`   
Install the CLI.

`sequelize init`  
Init folder structure, optionally reading config from a `.sequelizerc` file.

```javascript
  // .sequelizerc
  var path = require('path');

  module.exports = {
    'config': path.resolve('./', 'config/config.js'),
    'migrations-path': path.resolve('./', 'server/migrations'),
    'seeders-path': path.resolve('./', 'server/seeders'),
    'models-path': path.resolve('./', 'server/models')
  };
```

`sequelize model:create --name <ModelName> --attributes <name>:<type>,<name>:<type>`  
Create a new model and migration. (Type can be string, text, integer, date)

`sequelize db:migrate`  
Run pending migrations.
