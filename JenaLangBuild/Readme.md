How to run **Jena** code?

First, launch the command line interpreter.

**Windows** :
run the ***run_windows.bat*** file by double-clicking it or run command in the windows power shell : `start run_windows.bat`

**Linux** :
run the ***run_linux.sh*** file by the linux terminal command : `sh run_linux.sh`

Next, input code as single line. It may be any valid **Jena** expression.

**Examples** :

print sum of two numbers, entered by user : `using(readInt(), readInt()) as (a, b) print(a + b)`

print numbers from 0 to 9: `10.times().each(print)`

print numbers from 5 to 10: `6.times().map(i -> i + 5).each(print)`

read string, entered by user, and print it 3 times, each time on the new line : `using(read()) as (input) 3.times().map(i -> input).join(line).each(print)`

print some strings separated by comma : `["Peter", "Bob", "Richard"].join(",").each(print)`

to launch the file with **Jena** code you can use `source` method : `source("sources/Main.jena")`

You can find more code examples in the **sources** folder.