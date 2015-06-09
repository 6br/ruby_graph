require "spec_helper"
require_relative '../lib/imple1'

RSpec.describe NodeMatrix do
  describe '#new' do
    it "yields 0 size node" do
      network = NodeMatrix.new
      expect(network.size).to eq 0
    end
    it "yields 1000 size node" do
      expect(NodeMatrix.new(1000).size).to eq 1000
    end
  end

  describe '#list' do
    it "yields Nil when no node" do
      expect(NodeMatrix.new(1000).list).to eq ""
    end
    it "yields all node" do
      network = NodeMatrix.new 10
      network.add({first:1,second:2})
      network.add({first:3,second:4})
      expect(network.list).to eq "2 1\n4 3\n"
    end
    it "has no duplication" do
      network = NodeMatrix.new 10
      network.add({first:1,second:2})
      network.add({first:2,second:1})
      expect(network.list).to eq "2 1\n"
    end
  end

  describe '#add' do
    before do
      network = NodeMatrix.new 10
    end
    it "changes the length of list" do
      network = NodeMatrix.new 10
      expect{ network.add({first:1,second:2}) }.to change{ network.list }.from("").to("2 1\n")
    end
    it "raises error when exceed node size" do
      expect{network.add(11,11)}.to raise_error
    end
    it "raises error when it obtains any hash or str" do
      expect{network.add("aaa",:be)}.to raise_error
    end
end

end
