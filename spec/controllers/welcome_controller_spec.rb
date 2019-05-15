require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  context "welcome controller" do
    it 'index should render' do
      get :index
      expect(response).to redirect_to(new_session_path)
    end
  end
end
