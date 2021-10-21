# CQRS (command query responsibility segregation)

- is an architectual pattern 

- is present when "read operations are separated from write operations
  and they happen on a different interface"

- read and write operations might occur through different interfaces
  and on different datastore
  
  e.g. write interface write to db1<br>
       db1 replicates data to db2<br>
       read interface reads from db2<br>

sources: 

https://blog.risingstack.com/cqrs-explained-node-js-at-scale/
https://docs.microsoft.com/en-us/azure/architecture/patterns/cqrs
