require_relative "./skeleton2/lib/00_tree_node.rb"

class KnightPathFinder
    def self.root_node(start_position)
        PolyTreeNode.new(start_position)
    end

    def initialize(start_position)
        @root_node = KnightPathFinder.root_node(start_position)
        @path_history = [start_position]
    end

    #   def self.root_node(start_position)
    #     PolyTreeNode.new(start_position)
    # end

    # def initialize(start_position)
    #     KnightPathFinder.root_node = PolyTreeNode.new(start_position)
    #     @path_history = [start_position]
    # end

    def build_move_tree #finding children
    end

    def find_path
    end


end