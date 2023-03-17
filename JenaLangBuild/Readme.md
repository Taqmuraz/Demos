How to run **Jena** code?

First, launch the command line interpreter.

**Windows** :
run the run_windows.bat file by double-clicking it or run command in the windows power shell : `start run_windows.bat`

**Linux** :
run the run_linux.sh file by the linux terminal command : `sh run_linux.sh`

Next, input code as single line. It may be any valid **Jena** expression.

**Examples** :

print sum of two numbers, entered by user : `print(readInt() + readInt())`

print numbers from 0 to 9: `10.times().each(print)`

print numbers from 5 to 10: `6.times(i -> i + 5).each(print)`

print some strings separated by comma : `["Peter", "Bob", "Richard"].join(",").each(print)`

to launch the file with **Jena** code you can use `source` method : `source("sources/Main.jena")`

You can find more code examples in the **sources** folder.