Reading Time Method Design Recipe

###  1. Describe the Problem
_Put or write the user story here. Add any clarifying notes you might have.

# As a user
# So that I can improve my grammar
# I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.


###  2. Design the Method Signature
_Include the name of the method, its parameters, return value, and side effects.

...ruby
is_correct = check_grammar(text)

# text is a string which has sets of words within it
#  is_correct is a variable that checks and verifys a text



### 3. Create Examples as Tests
_Make a list of examples of what the method will take and return.

# 1
check_grammar("")
# => fail "no text given"

# 2
check_grammar("Hello, today is Monday.")
# => true

# 3
check_grammar("Hello, today is Monday")
# => false

# 4
check_grammar("hello, today is Monday.")
# => false

# 5
check_grammar("HELLO, today is Monday.")
# => true

