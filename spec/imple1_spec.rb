require "spec_helper"
require_relative '../lib/imple1'

RSpec.describe Matrix do
  it "yields 0 size node" do
    network = Matrix.new
    expect(network.size).to eq 0
  end
end
