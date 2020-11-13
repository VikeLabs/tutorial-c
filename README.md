# VikeLabs C/C++ Tutorial
> The goal of this workshop is learn how to lessen the pain programming in C/C++ with some things I now know but wanted to know when I first did C/C++! At the end of this workshop, you'll know some techniques and tools to help not rage quit in C with segmentation fault :angry:

# Prereqs
Know how to make a hello world in C.
Preferably a *NIX-based environment. There's ways around this but if you're on Windows try and configure WSL or WSL2. A fair warning WSL2 eats way more ram than chrome 
VSCode is installed.
you have gcc installed. Like sudo apt install gcc etc etc.

# Agenda
- Development Environment Setup
- Debugging (and no not printf)
- Memory Safety

# Notes
This is kinda rushed to be useful for those in SENG 265 but if this is popular I might run a round two :thinking_face:
Knowing some of these techniques will help you get those pesky C assignments done faster and correctly :thumbsup: :ultra-fast-parrot:

# Credits
[Michael Adams](https://www.ece.uvic.ca/~frodo/courses/cpp/)
[AddressSanitizer - Wikipedia](https://en.wikipedia.org/wiki/AddressSanitizer)

# Compiler Flags
## AddressSanitizer
`-fsanitize=address`

```
gcc -fsanitize=address -o hello hello.c
```

## Undefined Behavior 
`-fsanitize=undefined`

```
gcc -fsanitize=undefined -o hello hello.c
```

## Thread Sanitizer
`-fsanitize=thread`

```
gcc -fsanitize=thread -o hello hello.c
```

Discussion regarding this workshop during and prior will take place in [#workshop-c](https://vikelabs.slack.com/archives/C01ERJAB1PB) 