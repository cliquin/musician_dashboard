require 'rails_helper'

RSpec.describe Status, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:songs) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
