require_relative "../module/verification_syntax"
require_relative "../module/parser_syntax"

err_count = Verificator.syntax("example.rml", "=>", "|")
parser_tree =  Parser.syntax("example.rml", "=>", "|", err_count)

p parser_tree