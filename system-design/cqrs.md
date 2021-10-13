# CQRS (command query responsibility segregation)

- is an architectual pattern 

- is present when "read operations are separated from write operations
  and they happen on a different interface"

- read and write operations might occur through different interfaces
  and on different datastore
  
  e.g. write interface write to db1
       db1 replicates data to db2 
       read interface reads from db2

source: https://blog.risingstack.com/cqrs-explained-node-js-at-scale/
