#ノードを持つクラス
class Node
  # @return  [Fixnum] ノードID
  attr_accessor :ID
  # @return  [Hash] エッジの集合
  attr_accessor :edges

  # @param [Fixnum] Node id
  #
  # @return [Object] Node Object
  def initialize id
    @ID = id
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
  end

end
