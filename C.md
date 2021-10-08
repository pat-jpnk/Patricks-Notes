# C 

# reasons to not initialize a variable

- if it is global or static and you want the initial value 
  to be 0, many compilers will store 0's in the binary, 
  many 0's in the case of large arrays, this is relevant when 
  storage is limited

- when the variable will immediately be passed to another 
  function that will set it to different value 

- when a suitable value can only be set after other code 
  has run, if the variable is initialized before, the 
  compiler can't give a warning if the variable is not given
  a meaningful value in certain code paths 

# fact about initialization

- when a variable is declared inside of a function, its 
  initialized to whatever value happens to be in memory
  (garbage value), when it is declared in static or global 
  scope, it is initialized to 0

> int a; // global, 0  
> void foo() {  
>   
> int b; // function, ?  
> }  
