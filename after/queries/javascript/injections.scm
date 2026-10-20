(call_expression
  function: (member_expression
    property: (property_identifier) @_name)
  (#any-of? @_name "sql" "raw" "query")
  arguments: (template_string) @injection.content
  (#set! injection.language "sql"))
