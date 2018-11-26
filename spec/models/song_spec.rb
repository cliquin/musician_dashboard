require 'rails_helper'

RSpec.describe Song, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:status) }

    it { should have_many(:set_list_songs) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    it { should have_many(:set_lists) }

    end

    describe "Validations" do
      
    end
end
