require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  test "initialize with label, css_selector, and description" do
    issue = Issue.new("Test Label", "Test Selector", "Test Description")
    assert_equal "Test Label", issue.label
    assert_equal "Test Selector", issue.css_selector
    assert_equal "Test Description", issue.description
  end

end
