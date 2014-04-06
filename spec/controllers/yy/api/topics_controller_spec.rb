require 'spec_helper'

module Yy
  describe Api::TopicsController do
    describe 'GET #index' do
      let(:topic) { mock_model Topic }

      before do
        allow(Topic).to receive(:all).and_return [topic]
        get :index, use_route: :yy, format: :json
      end

      it { should respond_with :success }
      it { expect(Topic).to have_received(:all) }
    end
  end
end
