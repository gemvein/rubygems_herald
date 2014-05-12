require 'spec_helper'

describe GemDisplay do
  include_context 'gem_display support'

  it { should validate_presence_of(:name) }
  it { should allow_value('rails').for(:name) }
  it { should_not allow_value('bad').for(:name) }

  describe '#check_expiration' do
    subject { dummy_package.check_expiration.to_time }
    # Because check_expiration updates the package, it should always be non-expired.
    it { should be > Time.now }
  end

  describe '#update' do
    subject { dummy_package.update }
    it { should be true }
  end

  describe '#rubygem' do
    subject { dummy_package.rubygem }
    it { should be_a Hash }
  end

  describe '#rubygems_uri' do
    subject { dummy_package.rubygems_uri }
    it { should match URI::regexp }
  end

  describe '#spider' do
    subject { dummy_package.spider }
    it { should be_a RubygemsHerald::Spider }
  end

  describe '#self.load_rubygems' do
    subject { GemDisplay.load_rubygems }
    it { should have_exactly(3).items}
  end

  describe '#load_rubygem' do
    subject { dummy_package.load_rubygem }
    it { should be_a GemDisplay }
  end

  describe '#to_param' do
    subject { dummy_package.to_param }
    it { should be_a String }
  end
end