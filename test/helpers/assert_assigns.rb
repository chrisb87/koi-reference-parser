def assert_assigns(node_type, value, tree)
  assert_kind_of Block, tree
  assert_kind_of Statement, tree.elements.last
  assert_kind_of Assignment, tree.elements.last.elements.last
  assert_kind_of Identifier, tree.elements.last.elements.last.elements[0]
  assert_kind_of AssignmentOperator, tree.elements.last.elements.last.elements[1]
  assert_kind_of node_type, tree.elements.last.elements.last.elements[2]
  assert_equal value, tree.elements.last.elements.last.elements[2].text_value unless(value.nil?)
end