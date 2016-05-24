tokens = Lang.Parser.tokenize("""
# This is a comment.

# The following are whole numbers
1234
0
-9000

# Floats exist too
3.14159265359
-0.00000000001

# And we have strings too
'Hello world!'

# You can assign anything to a variable
foo: 'bar'

# You can call functions
print(foo)

# And parentheses are optional
print foo

# So how do you define a function?
sum: [numbers*]
  reduce numbers, [l, r]
    l + r

# There are other primitive types too, like symbols
:foo

# As well as lists of data
[1, 2, 3, 4]

# Or records, using the native JSON type
{ 'foo': 'bar', 'bar': 'baz' }
""")

IO.inspect(tokens, limit: 10000)
