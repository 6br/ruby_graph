require "spec_helper"
require_relative '../lib/graph'


RSpec.describe RandomNodeGenerate do
  describe '#new' do
    it "yields 1000 size node" do
      network = RandomNodeGenarate.new({nodes:1000,edges:1000,type:matrix})
      expect(network.size).to eq 1000
    end
  end
end

