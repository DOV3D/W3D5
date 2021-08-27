class PolyTreeNode
    
    attr_reader :parent, :children, :value 
    # attr_writer :parent
    
    def initialize(value)
       @parent= nil
       @children= []
       @value = value
    end


    def parent=(parent_node)
        @parent.children.delete(self) unless @parent.nil?
        @parent = parent_node
        begin
            parent_node.children << self unless parent_node.children.include?(self)
        rescue
            @parent = nil
        end
        # @parent = parent_node
       
    end



end