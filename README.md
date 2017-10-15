# RML [Ruby Markup Language] ver 0.1.3

## New in ver 0.1.3

- Added variable class "number"
- Added the ability to define an assignment operator
- Added parsing prohibition if a syntax error is detected
- Fixed logical bug with empty lines
- Fixed problem with extra spaces in keyword and value

## About syntax

- This syntax is flexible. Why? It is possible to redefine operators

## example syntax
```ruby
Okabe Rin => El Psy Congroo
Spike Spiegel => See you space cowboy
Kirito => Asuna!
Okabe age => 18
Shed => a12
Number of patches => 12 patch
```

## Example code

```ruby
require_relative "../module/verification_syntax"
require_relative "../module/parser_syntax"


err = Verification.syntax( "example.rml", "=>" )
rml = Parser.syntax( "example.rml","=>", err )

p rml
```

###### Output:
> {"OkabeRin" => "El Psy Congroo", "SpikeSpiegel" => "See you space cowboy", "Kirito" => "Asuna!", "Okabe age" => 18, "Shed" => "a12","Number of patches" => 12}
