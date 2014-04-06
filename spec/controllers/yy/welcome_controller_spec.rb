require 'spec_helper'

module Yy
  describe WelcomeController do
    describe 'GET #index' do
      before { get :index, use_route: :yy }
      it { should respond_with :success }
      it { should render_template :index }
    end
  end
end
