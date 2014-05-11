require 'spec_helper'

module Yy
  describe Topic do
    it "has a valid factory" do
      expect(create :yy_topic).to be_valid
    end

    describe '.associations' do
      it { should belong_to :category }
    end

    describe '.validations' do
      it { should validate_presence_of :title }
      it { should ensure_length_of(:title).is_at_least(10) }
      it { should validate_presence_of :content }
      it { should validate_presence_of :user_id }
    end
  end
end
