# odm vs orm 

- types of software to connect applications and databases

- in applications, a single object includes all attributes of the object,
  while data can be distributed among muliple tables 
  
  -> ORM software manages the complexities related to this 

- odm (object data mapper)        => used with document databases
- orm (object relational mapper)  => used with relational databases

# active record vs data mapper 

- both architectures than can be used to implement object relationa mappers

- active record: 
  - intuitive and easy to use
  - maps a database row on application object
  - does not require entity properties to be specified manually,
    can determine the properties automatically based on the database schema

- data mapper: 
  - separates domain and persistence layer
  - application objects are not aware of database details
  - objects are persisted to the database using EntityManager, not using
    application objects as with using active record

- pro/con 
  - active record is easy to use/intuitive -> CRUD focused 
  - data mapper allows encapsulation of business logic into entities and 
    to enforce restrictions regarding data and persistence  -> DOMAIN driven
