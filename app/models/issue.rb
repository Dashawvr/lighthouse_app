class Issue
  attr_accessor :label, :css_selector, :description

  def initialize(label, css_selector, description)
    @label = label
    @css_selector = css_selector
    @description = description
  end
end
