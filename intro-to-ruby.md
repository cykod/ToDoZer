---
layout: default
title: ToDoZer
---

# Make sure you have Ruby installed 

1. Start up a new command prompt.

2. Type `irb` in the command prompt. You should see something like this:

    ```
    irb(main):001:0> 
    ```

    You are now at the IRB prompt.

3. Try out a line of ruby. Type:

    ```
    puts 'Hello world!'
    ```

    You should see something like this:

    ```
    irb(main):001:0> puts 'Hello world!'
    Hello world!
    => nil
    ```

4. Exit IRB by typing
    
    ```
    exit
    ```

    and hitting enter. You are now back at the command prompt.

    **ONLY** If you don't have ruby installed and functioning, you'll need to install rvm:

         \curl -L https://get.rvm.io | bash -s stable --rails


# Play with the Ruby Language

* Be able to start up irb
* Do simple calculations in ruby
* Use and understand variables
* Use and understand collections
* Use loops

### Step 1
Type this in the terminal

```text
irb
```
Starts up the Interactive Ruby Shell an environment where you can try bits of ruby code and they'll be run automatically.


### Step 2

Type this in the terminal

    3 + 3
    7 * 6

Like most other languages, Ruby can do math.
`*` is used for multiplication and
`/` for division.

### Step 3

Type this in the terminal

    foo = 5

We're creating a variable called `foo`. You don't need to declare variables before using them.
`foo`.

### Step 4

Type this in the terminal

    foo + 2
    foo * 3

Ruby remembers that we are holding a 5 with the word `foo` and can use that 5 do to math.

### Step 5

Type this in the terminal

```
puts foo
```

puts prints the value of what comes after it. In this case it should print 5 since `foo` is holding a 5.

### Step 6

We can change the value that a variable holds. Try the following:

    foo = foo + 10
    puts foo

    foo += 5
    puts foo

First puts prints 15 because we added 10 to the value of `foo` and stored the new value in the same variable. We can use the shortcut `+=` to increment a variable by 5

### Step 7

Type this in the terminal

```
fruits = ["kiwi", "strawberry", "plum"]
```

Variables can also hold more than one value. Here were using the variable fruits to hold a collection of fruit names in an ``Array``. Array's in Ruby are created using square braket syntax.


### Step 8

Type this in the terminal

    fruits + ["orange"]
    fruits - ["kiwi"]

`+` and
`-` are valid operators on Arrays. We can use them with the array of fruits just like we can use them with numbers.

### Step 9

Type this in the terminal

    fruits.each do |f|
      puts f
    end


This code goes through the fruits array item by item and runs the code between `do` and `end` for each item.
In programming lingo, this is called __iteration__. With each iteration,

1. the variable `f` is reassigned to an element in `fruits`, going in
   order
2. whatever value the variable `f` contains is passed to `puts` to print
   out to the Terminal

So the code snippet above should print a list of the fruits in `fruits`.

### Step 10

Type this in the terminal

    if foo > 1
      puts "YAY!"
    end

This prints `YAY!` if the value stored in `foo` is greater than 1. Since the code only runs when certain
conditions are met if is called a **conditional**.

Section complete: \[_\] Finished

### Extra Material

1. [Ruby Arrays](ruby-arrays.html)
2. [Ruby Classes](ruby-classes.html)



Next [Creating a Rails App](creating-rails-app.html)

