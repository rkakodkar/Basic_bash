# Bash Basics

## Important concepts

### Bash is a scripting language

A script it a list of things for the computer to do

Scripts allow you to automate work.

Scripts are text files.  To tell the computer that the file is a 
bash script, put the following on the first line

````
#!/bin/bash
````

### Running a script

````
bash my_script.sh
````

You can make the script *exectuable*

````
chmod +x my_script.sh
````

Then execute the script like this:

````
./my_script.sh
````


### Debugging options

Verbose:

```
#!/bin/bash -v
```

# Exercises

**1. Environment variables**

Environemnt variables are variables that are set outside your bash script, generally when you log in to the system or load a module. Run the script `hello`.  What happens? 

Take a look at the script with `cat hello`

Which environment variable is being used here?

List all the enviroment variables in your session with `env`

**2. Variables**

Variables can be used to make your scripts more reusable and easier to read. `variables` has an example of a string variable, a number variable and a variable set to the ouput of a command. 

**3. Arguments**

Arguments are inputs given to a script. Run the script `arguments` with some arguements, for example:
`bash arguments one two dog cat fish`
*Extra credit*: Can you change the script to check that there are at least two arguments?

**4. If statements**

If statements are logic you can use to make your script do different things depending on the if condition.  `example_if` takes a number as an argument and prints out if the number is less than or greater than 3. 
`bash example_if 55`

*Extra credit*: Can you change the script to only accept numbers?

**5. Case statements**

Case statements are an alternative to writing nested if statements (ifs inside ifs inside ifs ...).  `case` is an example case statement.  `case` also contains an infinite while loop. The case statement checks the input from the keyboard.  If the input is `bye` the break is executed and code exits the infinite while loop.  

**6. Loops**

The script `loops` has three different loop examples.  

**7. Functions**

The directory animals contains a file with a list of animals, and a script `hedgehog_finder`.  `hedgehog_finder` reads the list_of_animals file line by line and prints out if a hedgehog is detected.  What do you think the `${1,,}` does?


**8. Some useful tools**

`grep` searches within files for matching text.  In the animals directory, try using grep to find different animals:

````
grep hedgehog list_of_animals
grep Hedgehog list_of_animals
grep -i hedgehog list_of_animals
````

You can use grep recursively:

````
grep -r hedgehog .
grep -ri hedgehog .
grep -rin hedgehog .

````

`find` finds 
 
 To find all filens with names that start with list*
````
find . -name list*
````

To find files in the current directory which were modified within the last 1 day:

````
find . -mtime -1
````

**9. Pipes and redirects**

Pipes let you take the output from one command and use it as the input to another.

Let's cd into the animals directory to play with pipes and redirects

To show only the first few lines of a file, use `head`

````
head list_of animals
````

To redirect this ouput to a file instead of the screen use `>`

````
head list_of animals > some_animals
````

Take the head of list_of_animals then sort into reverse alphabetical order
````
head list_of_animals | sort -r
````

Take the head of list_of_animals then sort into reverse alphabetical order and write that output to a file

````
head list_of_animals | sort -r > reversed
````

Using `<` sends data from a file to a command
 

This takes the list_of_animals file and runs `sort` on the file
````
sort < list_of_animals
````

This takes the list_of_animals file and runs `sort -u` on the file which sorts the file and removes duplicates, then outputs the result of this to a file 'unique_animals'

````
sort -u < list_of_animals > unique_animals
````

`>>` means append to a file


# Reources:

The [bash manual](https://www.gnu.org/software/bash/manual/html_node/index.html) 

Checkout other [workshops](https://brownhpc.github.io/) offered by the CCV HPC team.

To sign up for live events, go to the [CCV Events Calendar](https://events.brown.edu/ccv/view/all)
