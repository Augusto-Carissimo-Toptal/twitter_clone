require "rails_helper"

RSpec.describe PagesController, type: :controller do
  describe "GET home" do
    subject(:result) do
      get :home
      response
    end

    it "returns a 200" do
      expect(result).to have_http_status(:ok)
    end

    it "renders the correct template" do
      expect(result).to render_template(:home)
    end
  end
end
