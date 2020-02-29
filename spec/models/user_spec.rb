require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:likes) }

    it { should have_many(:own_photos) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_uniqueness_of(:username) }

    it { should validate_presence_of(:username).with_message('Username can't be blank...') }
      
    end
end
