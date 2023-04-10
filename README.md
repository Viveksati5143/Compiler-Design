# Installation for Windows:

As for today (2023-04-11) you will need the lastest versions of:

1. [flex-2.5.4a-1.exe](https://gnuwin32.sourceforge.net/packages/flex.htm)

2. After that, do a full install in a directory of your preference without spaces in the name. I suggest C:\GnuWin32. Do not install it in the default (C:\Program Files (x86)\GnuWin32) because it has problems with spaces in directory names, not to say parenthesis.

3. Also, consider installing [Dev-CPP](https://www.bloodshed.net/) in the default directory (C:\Dev-Cpp)

4. After that, set the PATH variable to include the bin directories of gcc (in C:\Dev-Cpp\bin) and flex (in C:\GnuWin32\bin). To do that, copy this: C:\Dev-Cpp\bin; C:\GnuWin32\bin and append it to the end of the PATH variable, defined in the place

# Running your first program

Open a prompt, cd to the directory where your ".l" and ".y" are, and compile them with:

    1. flex hello.l
    2. gcc lex.yy.c
    3. .\a.exe
