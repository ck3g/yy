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

    describe 'GET #show' do
      let(:topic) { create :yy_topic }

      before do
        get :show, id: topic.slug, use_route: :yy, format: :json
      end

      it { should respond_with :success }
      it { expect(assigns[:topic]).to eq topic }
    end

    describe 'POST #create' do
      context 'with valid attributes' do
        let!(:category) { create :yy_category, name: 'AngularJS' }
        def create_topic
          post :create, use_route: :yy, format: :json,
            topic: { title: 'My topic title',
                     content: "Content",
                     category_id: category.id }
        end

        before do
          create_topic unless example.metadata[:skip_before]
        end

        it { should respond_with :created }
        it "creates new topic", skip_before: true do
          expect { create_topic }.to change(Yy::Topic, :count).by(1)
        end
        it "assigns topic to current_user" do
          expect(Topic.last.user).to eq user
        end
        it "assigns topic to category" do
          expect(Topic.last.category).to eq category
        end
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
