# Improve Grammar Method Design Recipe

## 1. Describe the Problem

```ruby

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter 
and ends with a suitable sentence-ending punctuation mark.

```

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

# improve_grammar checks a text starts with a capital letter and ends with . or ! or ?
improve_grammar(text)
text: a string
returns true or false

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

improve_grammar("") => gives error message
improve_grammar("hello") => false
improve_grammar("Hello") => false
improve_grammar("Hello.") => true
improve_grammar("Hi there, how are you?") => true
improve_grammar("Hello world!") => true
improve_grammar("hello world!") => false

```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

