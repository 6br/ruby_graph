require_relative 'imple1'
require_relative 'imple2'

# 実装を隠蔽するクラス
class RandomNodeGenerate

  # @return [Object] NodeMapper of NodeMatrix
 attr_reader :network

  # Description of method
  #
  # @param [Type] nodes describe how much :nodes
  # @param [Type] edges describe how much :edges
  # @param [Type] type matrix or list
  # @return [Object] Set of Nodes and Edges
  def initialize(nodes:,edges:,type:)
    if type == 'matrix'
      @network = NodeMapper.new(nodes)
    elsif type == 'list'
	  @network = NodeMatrix.new(nodes)
	else
	  raise 'No type '
    end
	edges.times do
	  @network.add(random_generate(nodes))
	end
  end

  private
    def random_generate(size)
      {first: rand(size),second: rand(size)}
    end
end
