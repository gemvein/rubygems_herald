require 'spec_helper'

describe 'gem_displays/show' do
  include_context 'gem_display support'
  it 'displays a gem' do
    assign(:gem_display, dummy_package)
    render template: 'gem_displays/show'
    rendered.should match 'rails'
    rendered.should match :downloads.l
    rendered.should match :links.l
  end
end