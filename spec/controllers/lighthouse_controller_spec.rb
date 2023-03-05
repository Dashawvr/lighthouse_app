require 'rails_helper'
require 'rails-controller-testing'

describe LighthouseController, type: :controller do
  describe "#results" do
    it "assigns @result and renders the results template" do
      get :results
      expect(assigns(:result)).to be_an_instance_of(LighthouseResult)
      expect(response).to render_template(:results)
    end
  end
end
