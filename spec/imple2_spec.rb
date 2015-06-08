require "spec_helper"
require_relative '../lib/imple2'

RSpec.describe NodeMapper do
  describe '#add' do
    before do
      network = NodeMapper.new 10
    end
    it "changes the length of list" do
      network = NodeMapper.new 10
      expect{ network.add(1,2) }.to change{ network.list }.from("").to("2 1\n")
    end
    it "raises error when exceed node size" do
      expect{network.add(11,11)}.to raise_error
    end
    it "raises error when it obtains any hash or str" do
      expect{network.add("aaa",:be)}.to raise_error
    end
  end
  describe '#list' do
    it "yields Nil when no node" do
      expect(NodeMapper.new(1000).list).to eq ""
    end
    it "yields all node" do
      network = NodeMapper.new 10
      network.add(1,2)
      network.add(3,4)
      expect(network.list).to eq "2 1\n4 3\n"
    end
    it "has no duplication" do
      network = NodeMapper.new 10
      network.add(1,2)
      network.add(2,1)
      expect(network.list).to eq "2 1\n"
    end
  end
end
