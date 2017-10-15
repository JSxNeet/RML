require_relative "../module/verification_syntax"
require_relative "../module/parser_syntax"


err = Verification.syntax( "example.rml", "=>" )
rml = Parser.syntax( "example.rml","=>", err )

puts rml