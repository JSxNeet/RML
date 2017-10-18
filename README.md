# RML [Ruby Markup Language] ver 0.1.3

## New in ver 0.2.1

- Added variable class "array"
- Added the ability to define an array operator

## About syntax

- This syntax is flexible. Why? It is possible to redefine operators
- Only simple array

## example syntax
```ruby
Okabe Rin => El Psy Congroo
Spike Spiegel => See you space cowboy
Kirito => Asuna!
Okabe age => 18
Shed => a12
Number of patches => 12 patch
patch => | Hello , 1 |
```

## Example code

```ruby
require_relative "../module/version 0.2.1/verification_syntax"
require_relative "../module/version 0.2.1/parser_syntax.rb"

err_count = Verificator.syntax("example.rml", "=>", "|")
parser_tree =  Parser.syntax("example.rml", "=>", "|", err_count)

p rml
```

###### Output:
> {"Okabe Rin"=>"El Psy Congroo", "Spike Spiegel"=>"See you space cowboy", "Kirito"=>"Asuna!", "Okabe age"=>18, "Shed"=>"a12", "Number of patches"=>12, "patch"=>["Hello", 1]}
