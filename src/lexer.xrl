Definitions.

Whitespace = \s
Terminator = \n|\r\n|\r
Indent     = [{Terminator}]([\s]*)
Comment    = #.*

Atom         = [a-zA-Z_-][a-zA-Z0-9-]*
Delimiter    = \:|\,|\.
Bracket      = \(|\)|\{|\}|\[|\]
Operator     = \*|\+|\/|\-

Negative     = [\-]
Digit        = [0-9]
Integer      = {Negative}?{Digit}+
Float        = {Integer}\.{Digit}+

String = '[^']+'

Rules.

{Comment}    : {token, {comment, TokenLine, TokenChars}}.
{Indent}     : {token, {indent, TokenLine, TokenChars}}.
{Float}      : {token, {float, TokenLine, TokenChars}}.
{Integer}    : {token, {integer, TokenLine, TokenChars}}.
{String}     : {token, {string, TokenLine, TokenChars}}.
{Atom}       : {token, {atom, TokenLine, TokenChars}}.
{Delimiter}  : {token, {delimiter, TokenLine, TokenChars}}.
{Bracket}    : {token, {bracket, TokenLine, TokenChars}}.
{Operator}   : {token, {operator, TokenLine, TokenChars}}.
{Whitespace} : skip_token.

Erlang code.
