require "spec_helper"
require_relative '../lib/imple2'

RSpec.describe NodeMapper do
  describe '#add' do
    before do
      network = NodeMatrix.new 10
    end
    it "changes the length of list" do
      network = NodeMatrix.new 10
      expect{ network.add(1,2) }.to change{ network.list }.from("").to("2 1\n")
    end
    it "raises error when exceed node size" do
      expect{network.add(11,11)}.to raise_error
    end
    it "raises error when it obtains any hash or str" do
      expect{network.add("aaa",:be)}.to raise_error
    end


end
