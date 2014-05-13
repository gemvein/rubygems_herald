shared_context 'gem_display support' do
  let!(:dummy_package) { FactoryGirl.create(:gem_display, :name => 'rails') }
  let!(:next_package) { FactoryGirl.create(:gem_display, :name => 'rspec') }
  let!(:last_package) { FactoryGirl.create(:gem_display, :name => 'sass') }
end