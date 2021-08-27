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

    def add_child(child_node)
        child_node.parent=self
    end

    def remove_child(child_node)
        if child_node.parent.nil?
            raise "No parent"
        end
        child_node.parent=nil
    end

    def dfs(target_value)
        #check if self.value == target_value return self
        # iterate through children and call child.dfs(target_value) 
        #return nil
        return nil if self.nil?
        return self if self.value == target_value
        self.children.each do |child|
         result = child.dfs(target_value)
        end
        return nil

    end





end