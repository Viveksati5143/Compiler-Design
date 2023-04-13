# Installation for Windows:

As for today (2023-04-11) you will need the lastest versions of:

1. [flex-2.5.4a-1.exe](https://gnuwin32.sourceforge.net/packages/flex.htm)

2. After that, do a full install in a directory of your preference without spaces in the name. I suggest <kbd>C:\GnuWin32</kbd>. Do not install it in the default <kbd>C:\Program Files(x86)\GnuWin32</kbd> because it has problems with spaces in directory names, not to say parenthesis.

3. Also, consider installing [Dev-CPP](https://www.bloodshed.net/) in the default directory <kbd>C:\Dev-Cpp</kbd>

4. After that, set the PATH variable to include the bin directories of gcc in <kbd>C:\Dev-Cpp\bin</kbd> and flex in <kbd>C:\GnuWin32\bin</kbd>. To do that, copy this: <kbd>C:\Dev-Cpp\bin</kbd>; <kbd>C:\GnuWin32\bin</kbd> and append it to the end of the PATH variable, defined in the place

# Running your first program

## Windows:
Open a prompt, cd to the directory where your ".l" is, and compile it with:

    1. flex hello.l(file name)
    2. gcc lex.yy.c
    3. .\a.exe
    4. Ctrl + Z (End)
    
## Linux:
Open a prompt, cd to the directory where your ".l" is, and compile it with:

    1. lex hello.l
    2. gcc lex.yy.c -lfl
    3. ./a.out
    4. Ctrl + D (Stop taking inputs)
