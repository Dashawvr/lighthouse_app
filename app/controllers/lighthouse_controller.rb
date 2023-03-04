class LighthouseController < ApplicationController
  def results
    @json_data = File.read(Rails.root.join('public', 'lighthouse_report.json'))
    @result = LighthouseResult.new(@json_data)
  end
end
