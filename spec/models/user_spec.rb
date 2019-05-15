require 'rails_helper'

RSpec.describe User, type: :model do
  context "double test" do
    it 'doubel double' do
      book1 = double('Book', pages: 10)
      expect(book1.pages).to eq(10)

      allow(book1).to receive(:roll) { 3 }
      expect(book1.roll).to eq(3)
    end
  end
end
