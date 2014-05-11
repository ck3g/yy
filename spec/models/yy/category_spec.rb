require 'spec_helper'

module Yy
  describe Category do
    it 'has a valid factory' do
      expect(create :yy_category).to be_valid
    end

    describe '.associations' do
      it { should have_many(:topics).dependent :nullify }
    end

    describe '.validation' do
      context 'when valid' do
        subject { create :yy_category }
        it { should validate_presence_of :name }
        it { should validate_uniqueness_of :name }
      end
    end
  end
end
