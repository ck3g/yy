require 'spec_helper'

module Yy
  describe Api::CommentsController do
    let!(:user) { create :user }
    let!(:topic) { create :yy_topic }
    before { sign_in_as user }

    describe 'POST #create' do
      context 'with valid attributes' do
        def create_comment
          post :create, use_route: :yy, format: :json, topic_id: topic.slug,
            comment: { content: "Content" }
        end

        before do
          create_comment unless example.metadata[:skip_before]
        end

        it { should respond_with :created }
        it "creates new comment", skip_before: true do
          expect { create_comment }.to change(Yy::Comment, :count).by(1)
        end
        it "assigns comment to current_user" do
          expect(Comment.last.user).to eq user
        end
      end

      context 'with invalid attributes' do
        before do
          post :create, use_route: :yy, format: :json, topic_id: topic.slug,
            comment: { content: '' }
        end
        it { should respond_with :unprocessable_entity }
      end
    end
  end
end
