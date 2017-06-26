require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "New Title", body: "New Body", price: 1234) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(advertisement).to have_attributes(title: "New Title", body: "New Body", price: 1234)
    end
  end
end
