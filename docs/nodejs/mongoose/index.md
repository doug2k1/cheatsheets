# Mongoose

## Add

```
 $ npm i mongoose
```

## Connect

```js
const mongoose = require('mongoose')
mongoose.Promise = global.Promise // use standard promise library
mongoose.connect('mongodb://localhost/test')

const db = mongoose.connection

db.on('error', console.error.bind(console, 'connection error:'))
db.once('open', () => {
  // connected!
})

```

## Schema

```js
const kittySchema = mongoose.Schema({
  name: String
})
kittySchema.methods.speak = function () {
    let greeting = this.name
      ? `Meow name is ${this.name}`
      : `I don't have a name`
  console.log(greeting)
}
```

## Model

```js
const Kitten = mongoose.model('Kitten', kittySchema)
```

## Create

Instantiate

```js
const fluffy = new Kitten({ name: 'Fluffy' })
fluffy.speak()
```

Save to DB

```js
fluffy.save((err, fluffy) => {
  if (err) return console.log(err)
  fluffy.speak()
})
```

## Find

```js
Kitten.find((err, kittens) => {
  if (err) return console.log(err)
  console.log(kittens)
})
```