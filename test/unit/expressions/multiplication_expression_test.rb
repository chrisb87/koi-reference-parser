require File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'test_helper.rb'))

class MultiplicationExpressionTest < Test::Unit::TestCase

  include KoiReferenceParser
  
  test "should parse simple multiplication expression with integers" do
    tree = Parser.parse('test = 1 * 1')
    assert_expression(tree, MultitiveExpression, MultiplicationOperator)
  end
  
  test "should parse simple multiplication expression with floats" do
    tree = Parser.parse('test = 1.0 * 1.0')
    assert_expression(tree, MultitiveExpression, MultiplicationOperator)
  end
  
  test "should parse simple multiplication expression with strings" do
    tree = Parser.parse('test = "1" * "1"')
    assert_expression(tree, MultitiveExpression, MultiplicationOperator)
  end
  
  test "should parse simple multiplication expression with identifiers" do
    tree = Parser.parse('test = test1 * test2')
    assert_expression(tree, MultitiveExpression, MultiplicationOperator)
  end
  
end