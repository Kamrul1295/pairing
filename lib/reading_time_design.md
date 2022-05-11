Reading Time Method Design Recipe

###  1. Describe the Problem
_Put or write the user story here. Add any clarifying notes you might have.

# As a user
# So that I can manage my time
# I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.


###  2. Design the Method Signature
_Include the name of the method, its parameters, return value, and side effects.

...ruby
reading_time = reading_time(text)

# Here, the word is string
# And the reading_time is a number which is representing in minutes


### 3. Create Examples as Tests
_Make a list of examples of what the method will take and return.

# 1
reading_time("")
# => ""

# 2
reading_time(two_hundred_word)
# => 2

# 3
reading_time("199")
# => 1

