# Grammar Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

# 'improve_grammar' starts text with a captial letter and adds a full stop to a sentence.

best_grammer = improve_grammar(text)

# - text is a string with words in it
# - best grammar is a string begining with a capital letter and ending in a full stop.


```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

#1
improve_grammar("")
# => no string

#2
improve_grammar("hello")
# => "hello"

#3
improve_grammar("hello")
# => "Hello"

#4
improve_grammar("Hello")
# => "Hello"

#5
improve_grammar("hello my name is David")
# => "Hello my name is David"

#6
imrpove_grammar("hello my name is David")
# => "Hello my name is David."


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

