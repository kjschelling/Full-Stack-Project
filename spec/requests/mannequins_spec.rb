require 'rails_helper'

RSpec.describe "Mannequins", type: :request do
  describe "GET /mannequins" do
    it "works! (now write some real specs)" do
      get mannequins_path
      expect(response).to have_http_status(200)
    end
  end
end
