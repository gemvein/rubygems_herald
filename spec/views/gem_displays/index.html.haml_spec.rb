require 'spec_helper'

describe 'gem_displays/show.html.haml' do
  it 'displays a list of gems' do
    assign(:gem_displays, GemDisplay.all)
    render template: 'gem_displays/index'
    rendered.should contain 'rails'
    rendered.should contain 'rspec'
    rendered.should contain 'sass'
  end
end