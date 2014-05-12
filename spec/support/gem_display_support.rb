shared_context 'gem_display support' do
  let!(:dummy_package) { FactoryGirl.create(:gem_display, :name => 'rails') }
end