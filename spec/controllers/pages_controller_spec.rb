require 'rails_helper'

# RSpec.describe PagesController, type: :controller do
describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      expect(response).to have_http_status(:success)
    end
    it "doit avoir le bon titre" do
      get 'home'
      response.should has_selector("title",
        :content => "Simple App du Tutoriel Ruby on Rails | Accueil")
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
    it "doit avoir le bon titre" do
      get 'contact'
      response.should have_selector("title",
        :text => "Simple App du Tutoriel Ruby on Rails | contact")
     end
  end

  describe "GET 'about'" do
    it "devrait réussir" do
      get 'about'
      response.should be_success
    end
    it "doit avoir le bon titre" do
      get 'about'
      response.should have_selector("title",
        :content => "Simple App du Tutoriel Ruby on Rails | A propos")
     end
  end
  
end
