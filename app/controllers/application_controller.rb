class ApplicationController < ActionController::Base
  def index
    # load the JSON file into a string variable
    json_data = File.read(Rails.root.join('public', 'lighthouse_report.json'))

    # parse the JSON into a Ruby hash
    data = JSON.parse(json_data)

    # create a new Result object
    @result = Result.new(data)

    # render the view
    render :results
  end
end
