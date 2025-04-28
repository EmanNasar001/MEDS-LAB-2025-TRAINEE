# Shell Scripting Tutorial
## What is shell?
A shell is basically a ```command-line interface (CLI)``` that allows users to interact with the ```computer's operating system``` by typing commands.


## Types of Shells:
1.**Bash (Bourne Again Shell)**: The default shell in many Linux systems (including WSL).

2.**Zsh (Z Shell**): A more customizable shell with advanced features.

3.**Sh (Bourne Shell)**: The original shell, often used for scripting.
- Throughout this tutorial, we’ll be using Bash (the Bourne Again SHell) to write and run all of our scripts.
## Basic Shell commands:
1.  **pwd:**
It prints the current working directory:
```bash
 $ pwd
 Output:
/home/username/projects
```
2.  **cd:**
```cd <directory>``` Changes the current working directory to the specified ```<directory>```
```bash
 $ cd documents
 Output:
moves you to documents
```
- **Go to previous directory:**
```bash
  cd -
  ```
  - **Go to home directory:**
```bash
  cd ~
  ```
  - **Go to parent directory:**
```bash
  cd ..
  ```
  - **Go to root directory:**
```bash
  cd /
  ```
  3. **ls:**
  ```ls <directory>```Prints the list of files in directory:
  ```bash
  $ ls documents
  output:
  projectfile.pdf  
  
  ```
  -  **-l**:
  It used along with ```ls`` to give more details about about files
  ```bash
  $ ls -l  documents
  output:
  projectfile.pdf  4096 Apr 27 12:00 folder1
  
  ```

  4. **mkdir:**

  ```mkdir <dir>```	Create a new directory named ```<dir>```




  5. **cp:**

  cp ```<src> <dst>```	Copy file or directory from ```<src> to <dst>```.



  6. **mv:**

  ```mv <src> <dst>```	Move or rename ```<src>``` to ```<dst>```



  7. **rm**

  ```rm <file>```	Remove (delete) ```<file>```





  8. **echo:**

  ```echo <text>```	Print ```<text>``` to the terminal.
  ```bash
  $ echo  "Hello World" 
  Output:
  Hello World
  ```
  9. **touch:**

  ```touch <file>```	Create an empty file named ```<file>```
  ## .sh File:
  ```.sh``` = "shell script" file.It's used to save and organize commands into a script that can be run again and again automatically.
  ### Why use .sh if we can type commands directly?
  **a.**  If you just need to run 1–2 quick commands, you can type them directly into the shell.
  **b.** But if you:

- Have many commands,

- Want to reuse them later,

- Want to automate something,

- Or share your commands with others.
**Then you should put them into a .sh file!**
#### How to create .sh file:
```bash
 $ nano myscript.sh
 
```
 OR
 ```bash
 $ vim myscript.sh
 
```
### Executing .sh :

  . **chmod +x:**
  
  ```chmod +x <file>```	Make ```<file> ```executable. It adds the executable permission to a file, telling the system that it can be run as a program.
  ```bash
 $  chmod +x myscript.sh
 ```
 ### Running .sh :
 Use  ``` ./ ``` to run file 
 ```bash
 $  ./myscript.sh
 ```
 ## Practices:
 - While creating a file/directory or naming it ;if it includes spaces use **double-quotations** ```"  "``` while naming it otherwise bash takes as two diff arguments
 - Prefer using underscores ```_ ```or hyphens ```- ```in names to avoid spaces altogether.
- File/Folder names are case-sensitive in Linux;```Semester``` and ```semester``` are treated as two different names.
- Avoid using special characters (like `!`, `@`, `#`) in names unless necessary.


  

  
  
 






