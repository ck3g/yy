require 'spec_helper'

module Yy
  describe Api::CategoriesController do
    describe 'GET #index' do
      let(:category) { mock_model Category }

      before do
        allow(Category).to receive(:all).and_return [category]
        get :index, use_route: :yy, format: :json
      end
      it { should respond_with :success }
      it { expect(Category).to have_received(:all) }
    end
  end
end
