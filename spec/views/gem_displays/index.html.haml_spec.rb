require 'spec_helper'

describe 'gem_displays/show' do
  include_context 'gem_display support'
  it 'displays a list of gems' do
    assign(:gem_displays, GemDisplay.all)
    render template: 'gem_displays/index'
    rendered.should match 'rails'
    rendered.should match 'rspec'
    rendered.should match 'sass'
  end
end