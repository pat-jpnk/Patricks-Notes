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

# facts about initialization

- when a variable is declared inside of a function, its 
  initialized to whatever value happens to be in memory
  (garbage value), when it is declared in static or global 
  scope, it is initialized to 0

> int main(void) {  
>  
>   int a;                  // global scope, (a = 0)  
>   
>   void foo() {  
>     int b;                // function scope, (b = ?)  
>   }
>     
> }


# abort() vs exit()

- abort() sends SIGABRT, exit() closes the application 'normally'
- default reaction to abort signal may be overriden 
)
- abort() exits the program without calling functions registered using atexit() and
  without calling destructors of static and global members
- exit() calls atexit() functions and destructors, but not automatic destructors (C++ implements this) 



# compiling vs linking 

compiling:
  - translation of individual files of code (depends on CPU architecture)
  - output is object files (e.g. ".o" or other, depends on implementation)

linking:
  - linking of multiple object code files into executable that can be run by OS (depends on CPU architecture + OS)
  - output is an executable file

general process: 
  -> preprocessing 
  -> compilation 
  -> assembly 
  -> linking


# static libraries vs dynamic/shared libraries

static libraries:
  - is "locked" into executable after compiling
  - tends to be faster, as it is embedded into the 
    executable 

dynamic/shared libraries: 
  - is accessed by the executable outside of itself 
  - tend to produce smaller executables


# creating static library (Linux/gcc)
  - using "test.c" as the basis 
  
  - create the object file "test.o"             (using: "gcc test.c -c")
  - creare archive                              (using: "ar libname.a test.o")
  - use library during compilation of "main.c"  (using: "gcc -L . -lall -o main main.c ")

                                    -> -L [arg] where arg is a list of extra directories to be searched for the libraries existance, in this case ".", meaning current directory 
                                    -> -l+[arg] where arg is the name of the static library to be linked
                                    -> -o [arg], where arg is the name of the executable (optional)


# creating dynamic/shared library (Linux/gcc)
  - using "test.c" as the basis
  
  - creating object files without fixed memory adresses (using: "gcc test.c -c -fpic")
  - compiling object files into dynamic/shared library  (using: "gcc test.o -shared -o liball.so") ("lib" pre-fix indicates that this is a library to the compiler, when used later)
  - adding the library locationn to the environmen path (using: "export LD_LIBRARY_PATH=$PATH:$LD_LIBRARY_PATH")


# arrays and pointers 

pointer to array of integers (not a pointer to 0th element):
> int(*p)[10] 

array of integer pointers:
> *p[10]



