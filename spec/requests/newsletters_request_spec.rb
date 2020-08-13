require 'rails_helper'

RSpec.describe "Newsletters", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get newsletters_path 
      expect(response).to have_http_status(:success)
    end
  end
end
