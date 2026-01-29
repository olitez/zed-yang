; Module and submodule
(module
  module_name: (_) @name) @item

(submodule
  submodule_name: (_) @name) @item

; Containers and data nodes
(statement
  (statement_keyword) @context
  (argument (_) @name)
  (#match? @context "^(container|list|leaf|leaf-list|choice|case|grouping|typedef|identity|feature|rpc|action|notification|augment|deviation|extension)$")) @item
