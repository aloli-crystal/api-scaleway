require "./spec_helper"
require "yaml"

describe ScalewayApi do
  it "expose une version" do
    yml = YAML.parse(File.read(File.join(__DIR__, "..", "shard.yml")))
    ScalewayApi::VERSION.should eq(yml["version"].as_s)
  end

  it "liste les zones Scaleway les plus courantes" do
    ScalewayApi::ZONES.should contain("fr-par-2")
    ScalewayApi::ZONES.should contain("nl-ams-1")
    ScalewayApi::ZONES.should contain("pl-waw-2")
  end

  it "définit fr-par-2 comme zone par défaut" do
    ScalewayApi::DEFAULT_ZONE.should eq("fr-par-2")
  end
end
