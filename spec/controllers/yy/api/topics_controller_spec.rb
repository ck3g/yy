require 'spec_helper'

module Yy
  describe Api::TopicsController do
    let!(:user) { create :user }
    before { sign_in_as user }

    describe 'GET #index' do
      let(:topic) { mock_model Topic }

      before do
        allow(Topic).to receive(:all).and_return [topic]
        get :index, use_route: :yy, format: :json
      end

      it { should respond_with :success }
      it { expect(Topic).to have_received(:all) }
    end

    describe 'POST #create' do
      context 'with valid attributes' do
        before do
          post :create, use_route: :yy, format: :json,
            topic: { title: 'My topic title', content: "Content" }
        end
        it { should respond_with :created }
      end

      context 'with invalid attributes' do
        before do
          post :create, use_route: :yy, format: :json,
            topic: { title: 'Invalid', content: '' }
        end
        it { should respond_with :unprocessable_entity }
      end
    end
  end
end
