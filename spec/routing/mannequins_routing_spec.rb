require "rails_helper"

RSpec.describe MannequinsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mannequins").to route_to("mannequins#index")
    end


    it "routes to #show" do
      expect(:get => "/mannequins/1").to route_to("mannequins#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/mannequins").to route_to("mannequins#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mannequins/1").to route_to("mannequins#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mannequins/1").to route_to("mannequins#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mannequins/1").to route_to("mannequins#destroy", :id => "1")
    end

  end
end
