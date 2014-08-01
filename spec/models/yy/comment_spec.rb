require 'spec_helper'

module Yy
  describe Comment do
    it "has a valid factory" do
      expect(create :yy_comment).to be_valid
    end

    describe '.associations' do
      it { should belong_to :user }
      it { should belong_to :topic }
    end

    describe '.validations' do
      subject { create :yy_comment }
      it { should validate_presence_of :topic }
      it { should validate_presence_of :user }
      it { should validate_presence_of :content }
    end
  end
end
