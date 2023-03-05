require 'rails_helper'
require 'rails-controller-testing'

RSpec.describe Issue, type: :model do
  describe "#initialize" do
    it "creates an Issue object with the correct attributes" do
      issue = Issue.new("label", "css_selector", "description")
      expect(issue.label).to eq("label")
      expect(issue.css_selector).to eq("css_selector")
      expect(issue.description).to eq("description")
    end
  end
end
