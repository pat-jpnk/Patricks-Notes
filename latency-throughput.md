# Latency vs Throughput 

Both latency and troughput are measurements that can be used to assess the speed of data transfers over a network. 


**Latency**

"The time taken for a packet of data to be transfered across a network" 

Can be measured one-way or as a round trip - a round trip is the concept of data being sent from one host to another
and the subsequently being sent from the receiver and being received by the original sender.

Round trip from Host **A** to **B**:

**A**  [data]-> **B**
**A**  <-[data] **B**  
 

Latency is measured in milliseconds

Two factors which can increase latency are the number of routers a packet has to pass through and 
the physical distance between the sending and receiving machine 



**Throughput**

"The quantity of data being sent and received within a fixed amount of time"

If a large number of packets does not reach their destination successfully,
the total throughput will be lower 

Throughput is measured in "megabits per second" (Mbps) or "gigabits per second"(Gbps)  





Both latency and throughput are related to the concept of bandwith


**Bandwith**

"The maximum rate of data transfer across a given path in a network"

The maximum bandwith is limited by the standard of the internet connection and the capabilities of the network devices



-> bandwith describes the maximum possible amount of data being exchanged at a certain point in time 

> latency describes the time it takes for a single packet to be transfered from one point on a network to another during an exchange 

-> throughput describes how many packets of data can be exchanged over a network in a fixed amount of time


 
**The relationhip between latency and bandwith**

A lowered amount of bandwith and an increased amount of latency will both decrease the
best possible speed of data transfered across a network. With increased bandwith the 
speed of transfering data increases as well. This effect is not diminished by a 
low level of latency


**Throughput vs Bandwith**

Bandwith can be thought of as the limit of the amount of data that can transfered over the network
at one point in time, while throughput can be though of as the actual amount of data that is being 
transfered at one point in time - in practice.



https://www.comparitech.com/net-admin/latency-vs-throughput/
