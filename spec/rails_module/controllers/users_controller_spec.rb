require "rails_helper"

RSpec.describe UsersController, type: :controller do
  describe "#index" do
    subject(:result) do
      get :index
      response
    end

    let(:user) { create(:user) }

    it "returns a 200" do
      expect(result).to have_http_status(:ok)
    end

    it "renders the correct template" do
      expect(result).to render_template(:index)
    end

    it 'assigns all users in the DB to @users' do
      result
      expect(assigns(:users)).to eq([user])
    end
  end

  describe "#show" do
    let(:user) { create(:user) }

    subject(:result) do
      get :show, params: { id: user.id }
      response
    end

    it "returns a 200" do
      expect(result).to have_http_status(:ok)
    end

    it "renders the correct template" do
      expect(result).to render_template(:show)
    end

    it 'assigns @users' do
      result
      expect(assigns(:user)).to eq(user)
    end
  end

  describe "#create" do
    subject(:result) do
      post :create, params: { user: { name: 'My String', handle: 'Baba' } }
      response
    end

    it "returns a 200" do
      expect(result).to have_http_status(:ok).or have_http_status('302')
    end

    it "renders the show page of the new created user" do
      expect(result).to redirect_to(:action => :show, :id => assigns(:user).id).or render_template(:show)
    end

    it 'it creates a new user in DB' do
      expect { result }.to change { User.count }.from(0).to(1)
    end
  end

  describe "#update" do
    let(:user) { create(:user) }

    subject(:result) do
      patch :update, params: { user: { name: 'New name', handle: 'New handle' }, id: user.id }
      response
    end

    it "returns a 200" do
      expect(result).to have_http_status(:ok).or have_http_status('302')
    end

    it "renders the show page of the new updated user" do
      expect(result).to redirect_to(:action => :show, :id => assigns(:user).id).or render_template(:show)
    end

    it 'it updates the name of the new user in DB' do
      expect { result }.to change {
        user.reload
        user.name
      }.from('MyName').to('New name')
    end

    it 'it updates the handle of the new user in DB' do
      expect { result }.to change {
        user.reload
        user.handle
      }.from('MyHandle').to('New handle')
    end
  end

  describe "#destroy" do
    let!(:user) { create(:user) }

    subject(:result) do
      delete :destroy, params: { id: user.id }
      response
    end

    it "returns a 200" do
      expect(result).to have_http_status(:ok).or have_http_status('302')
    end

    it "renders the index page of all users" do
      expect(result).to redirect_to(:action => :index).or render_template(:index)
    end

    it 'it deletes the user from the DB' do
      expect { result }.to change { User.count }.from(1).to(0)
    end
  end
end
