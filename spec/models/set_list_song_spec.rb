require 'rails_helper'

RSpec.describe SetListSong, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:set_list) }

    it { should belong_to(:song) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
