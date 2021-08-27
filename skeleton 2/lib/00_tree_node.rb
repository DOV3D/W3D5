class PolyTreeNode
    
    attr_reader :parent, :children, :value 
    
    
    def initialize(value)
       @parent= nil
       @children= []
       @value = value
    end

    def parent=(parent_node)

        parent = parent_node.value
        parent_node.children << self unless parent_node.children.include?(self)
        
    end



end