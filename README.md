# RML [Ruby Markup Language] ver 0.2.2

## Description

RML (Ruby Markup Language) is a flexible tool for storing data in the file system. At this point, he understands data types such as string, number, boolean, and one-dimensional arrays.

## New in ver 0.2.2

- Added data type "Boolean".
- The code is divided into many subroutines, in order to increase its readability.
- The code forgave a small refactoring.
- Fixed a bug with the counting of an array by a string, if indent before the beginning and after the end of the enumeration.

## Qick start

#### example.rml

```ruby
Okabe Rin => El Psy Congroo
Spike Spiegel => See you space cowboy
Kirito => Asuna!
Okabe age => 18
Shed => a12
Bool => true
Boolean => false
Number of patches => 12 patch
patch1 => |Hello , 1, true, false|
```

#### main.rb

```ruby
require_relative "../module/version 0.2.1/verification_syntax"
require_relative "../module/version 0.2.1/parser_syntax.rb"

err_count = Verificator.syntax("example.rml", "=>", "|")
parser_tree =  Parser.syntax("example.rml", "=>", "|", err_count)

p rml
```

#### Output:
> {"Okabe Rin"=>"El Psy Congroo", "Spike Spiegel"=>"See you space cowboy", "Kirito"=>"Asuna!", "Okabe
age"=>18, "Shed"=>"a12", "Bool"=>true, "Boolean"=>false, "Number of patches"=>12, "patch1"=>["Hello"
, 1, true, false]}
