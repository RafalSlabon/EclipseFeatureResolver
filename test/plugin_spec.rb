require "rspec"
require "../main/plugin"

describe "Plugin creation from string attributes" do

  data = Hash[
      'id'=>"Plugin1",
      'download-size'=>"0",
      'install-size'=>"0",
      'version'=>"0.0.0",
      'unpack'=>"false"]
  plugin = Plugin.new(data)

  it "should get id" do
    plugin.id.should eq("Plugin1")
  end

  it "should get version" do
    plugin.version.should eq("0.0.0")
  end

  it "should get unpack" do
    plugin.unpack.should eq("false")
  end

end