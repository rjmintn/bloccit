require 'rails_helper'

RSpec.describe AdvertisementController, type: :controller do
  let(:my_post) { Advertisement.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: RandomData.random_price) }
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "assigns [my_post] to @advertisements" do
       get :index
       expect(assigns(:advertisements)).to eq([my_post])
     end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: my_post.id}
      expect(response).to have_http_status(:success)
    end
    it "renders the #show view" do
      get :show, {id: my_post.id}
      expect(response).to render_template :show
    end
  end

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  describe "POST create" do
    it "increases the number of Advertisement by 1" do
      expect{post :create, advertisement: {title: RandomData.random_sentence, body: RandomData.random_paragraph, price: RandomData.random_price}}.to change(Advertisement,:count).by(1)
    end

    it "assigns the new advertisement to @advertisement" do
      post :create, advertisement: {title: RandomData.random_sentence, body: RandomData.random_paragraph, price: RandomData.random_price}
      expect(assigns(:advertisement)).to eq Advertisement.last
    end

    it "redirects to the new advertisement" do
      post :create, advertisement: {title: RandomData.random_sentence, body: RandomData.random_paragraph, price: RandomData.random_price}
      expect(response).to redirect_to Advertisement.last
    end
  end

end
