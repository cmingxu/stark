require 'rails_helper'

RSpec.describe App, type: :model do
  it "this is the test matcher" do
    expect( 1+1 ).to eq(2)
    expect(true).to be_truthy
    expect([1]).to include(1)
    expect(1).to be_instance_of(Integer)
    expect([]).to be_kind_of(Array)

    expect(false).to be_falsey
    expect("foobar").to match(/foo/)
  end

  context "this is context" do
    it "it context" do
      expect(2).to be > 1
    end

    it 'another spec' do
    end
  end
end
