require 'rails_helper'

RSpec.describe SetList, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:set_list_songs) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    it { should have_many(:songs) }

    end

    describe "Validations" do
      
    end
end
