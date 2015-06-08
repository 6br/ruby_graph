class RandomNodeGenerate

  # Description of method
  #
  # @param [Type] :nodes describe :nodes
  # @param [Type] :edges describe :edges
  # @param [Type] :matrix or :list
  # @return [Object] Set of Nodes and Edges
  def initialize(:nodes,:edges,:type)
    if :type == :
      @network = NodeMapper.new(:nodes)
    elsif :type == :-

    end
  end

  def list
    @network.list
  end

  private

    def random_generate(size)
      first = rand(size)
      second = rand(size)


    end
end
