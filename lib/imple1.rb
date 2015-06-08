# ノードを行列で表すクラス
class NodeMatrix
  # @return [Fixnum] ノード数
  attr_reader :size

  # @param size [Fixnum] ノード数
  # @example
  #  network = NodeMatrix.new(100)
  #
  # @return [Object] インスタンス
  def initialize size=0
    @matrix = Array.new(size){ Array.new(size,0) }
    @size = size
 end

  # @param first [Fixnum] 最初のノード
  # @param second [Fixnum] 次のノード
  def add(first, second)
    @matrix[first][second]=1
    @matrix[second][first]=1
  end

 # @return [String] ノード一覧
  def list
    str = ""
    @size.times do |i|
      [*0..i].each do |j|
        str << "#{i} #{j}\n" if @matrix[i][j]==1
      end
    end
    str
  end

end
