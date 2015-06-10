#! /bin/ruby
require_relative "graph"
require 'benchmark'

p "Write how much nodes generate?"
nodes = gets.chomp.to_i
p "Write how much edges generate randomly?"
edges = gets.chomp.to_i
p "Write which is use, matrix or list?"
types = gets.chomp

result = Benchmark.realtime do
  rng = RandomNodeGenerate.new(nodes:nodes,edges:edges,type:types)
  print rng.network.list
end
p "所要時間 #{result}s"
