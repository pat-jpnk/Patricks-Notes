# CPP 

# scope resolution operator "::"

use-cases:

- accessing a global variable, if there exists 
  a variable with the same name in the local scope

- to define methods of a class, outside of the class 

- to access (or to define) static members of a class

- to distinguish a with the same name with exists in 
  both parents during multiple inheritance

- to access things in the scope of a namespace (std::cout)

- to refer to a member of a nested class (outside::inside::y = 2)


# std::endl vs '\n'

- std::endl flushes the output buffer, '\n' does not


# templates 

- used for abstraction (e.g. for algorithms, containers) /  generic programming
- 'blueprints' the compiler uses to create functions and types

