todo task Method Design Recipe

###  1. Describe the Problem
_Put or write the user story here. Add any clarifying notes you might have.

# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.

###  2. Design the Method Signature
_Include the name of the method, its parameters, return value, and side effects.

...ruby
reminding_todo = todo_tasks(text)

# todo_tasks is list of actions/tasks given
# 

### 3. Create Examples as Tests
_Make a list of examples of what the method will take and return.


# 1
todo_task(12345)
  "No text given"

# 2
todo_task("having_lunch")
  return false

# 3
todo_task("#TODO going_shopping")
  return true





  