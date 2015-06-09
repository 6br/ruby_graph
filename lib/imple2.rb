#ノードを持つクラス
class Node
  # @return  [Fixnum] ノードID
  attr_accessor :ID
  # @return  [Array] エッジの集合
  attr_accessor :edges

  # @param [Fixnum] Node id
  #
  # @return [Object] Node Object
  def initialize id
    @ID = id
    @edges = []
  end

end

class NodeMapper
  # @return [Fixnum] ノード数
  attr_reader :size

  # @param size [Fixnum] ノード数
  # @example
  #  network = NodeMatrix.new(100)
  #
  # @return [Object] インスタンス
  def initialize size=0
    @size = size
    @node = []
  end

  # @param first [Fixnum] 最初のノード
  # @param second [Fixnum] 次のノード
  def add(first:, second:)
    @node[first] ||= Node.new first
    @node[first].edges.push(second).uniq!
    @node[second] ||= Node.new second
    @node[second].edges.push(first).uniq!
  end

  def list
    str = ""
    @size.times do |i|
      if @node[i]
        @node[i].edges.select{|k| k>i}.each{|j| str << "#{j} #{i}\n" }
      end
    end
    str
  end

end
