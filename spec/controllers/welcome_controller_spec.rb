require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  context "welcome controller" do
    it 'index should render' do
      get :index
      expect(resonse).to render_template('index')
    end
  end
end
