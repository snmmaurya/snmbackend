require 'rails_helper'

RSpec.describe "Api::V1::Data", type: :request do
  describe "GET /index" do
    it "should success" do
      get api_v1_data_path, params: {}
      json_response = JSON.parse response.body
      expect(json_response).to eq({"message"=>"it works"})
    end
  end
end
