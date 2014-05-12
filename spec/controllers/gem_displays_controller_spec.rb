require 'spec_helper'

describe GemDisplaysController do
  include_context 'gem_display support'

  describe 'Routing' do
    it { should route(:get, '/gem_displays').to(:action => 'index') }
    it { should route(:get, '/gem_displays/rails').to(:action => 'show', :id => 'rails') }
    it { should route(:get, '/gem_displays/rails/refresh').to(:action => 'refresh', :id => 'rails') }
  end

  describe 'GET index' do
    before(:each) { get :index }
    it { should respond_with(:success) }
    it { should render_template(:index) }
  end
  describe 'GET show' do
    context 'with an invalid gem name' do
      before(:each) { get :show, { id: 'bad' } }
      it { should respond_with(:not_found) }
    end
    context 'with a valid gem name' do
      before(:each) { get :show, { id: 'rails' } }
      it { should respond_with(:success) }
      it { should render_template(:show) }
    end
  end
  describe 'GET refresh' do
    context 'with an invalid gem name' do
      before(:each) { get :refresh, { id: 'bad' } }
      it { should respond_with(:not_found) }
    end
    context 'with a valid gem name' do
      before(:each) { get :refresh, { id: 'rails' } }
      it { should respond_with(:redirect) }
      it { should set_the_flash }
    end
  end
end