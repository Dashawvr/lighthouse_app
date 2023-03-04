class Issue
  attr_accessor :label, :css_selector

  def initialize(label, css_selector)
    @label = label
    @css_selector = css_selector
  end
end
