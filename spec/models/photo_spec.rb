require 'rails_helper'

RSpec.describe Photo, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:poster) }

    it { should have_many(:comments) }

    it { should have_many(:likes) }

    end

    describe "InDirect Associations" do

    it { should have_many(:discoverers) }

    it { should have_many(:followers) }

    end

    describe "Validations" do
      
    end
end
