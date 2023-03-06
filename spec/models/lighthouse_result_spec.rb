require 'rails_helper'
require 'rails-controller-testing'

RSpec.describe LighthouseResult, type: :model do
  describe "#initialize" do
    it "creates a LighthouseResult object with the correct attributes" do
      json_data = File.read(Rails.root.join("public", "lighthouse_report.json"))
      result = LighthouseResult.new(json_data)
      expect(result.score).to be_an(Integer)
      expect(result.issues).to be_an(Array)
      expect(result.status).to be_an(String)
    end
  end

  describe "#score" do
    it "returns the correct score" do
      json_data = File.read(Rails.root.join("public", "lighthouse_report.json"))
      result = LighthouseResult.new(json_data)
      expect(result.score).to eq(93)
    end
  end

  describe "#calculate_status" do
    it "calculates the status correctly" do
      json_data = File.read(Rails.root.join("public", "lighthouse_report.json"))
      result = LighthouseResult.new(json_data)
      expect(result.status).to eq("Good")
    end
  end
end
