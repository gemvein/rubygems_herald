require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "RubygemsHerald" do
  it 'should return correct version string' do
    RubygemsHerald.version_string.should == "RubygemsHerald version #{RubygemsHerald::VERSION}"
  end
end
