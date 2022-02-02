## MongoDB basic instructions

- Show all databases

  ```
  show dbs
  ```

- Create or use the database (sampleDB)

  ```
  use sampleDB
  ```

- Show current working database

  ```
  db
  ```

- Create collection

  ```
  db.createCollection("sampleC")
  ```

- Insert data

  ```
  db.sampleC.insert({"sampleID":1, "sampleName":"Dileepa"})
  ```

- Insert multiple data

  ```
  db.sampleC.insert([{"empID":1,"empName":"aaaaa"},{"empID":2,"empName":"bbbbb"},{"empID":3,"empName":"ccccc"},{"empID":5,"empName":"ddddd"}])
  ```

- Show data

  ```
  db.sampleC.find()
  db.sampleC.findOne()
  db.sampleC.find({"sampleID":1})
  db.smapleC.find({"sampleName":"Dileepa"})
  db.sampleC.find().pretty()
  ```

- Update data

  ```
  db.sampleC.update({"sampleID":1},{$set:{"sampleName":"Dileepa"}})
  ```

- Delete data

  ```
  db.sampleC.remove({"sampleID":1})
  ```

- Delete database

  ```
  db.dropDatabase()
  ```

- Delete collection

  ```
  db.sampleC.drop()
  ```
