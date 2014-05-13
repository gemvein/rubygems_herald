require 'spec_helper'

describe 'gem_displays/show.html.haml' do
  include_context 'gem_display support'
  it 'displays a gem' do
    assign(:gem_display, dummy_package)
    render template: 'gem_displays/show'
    rendered.should contain 'rails'
    rendered.should contain :downloads.l
    rendered.should contain :links.l
  end
end