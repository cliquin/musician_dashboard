require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:statuses) }

    it { should have_many(:set_lists) }

    it { should have_many(:songs) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
