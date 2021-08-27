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
        return self if value == target_value
        children.each do |child|
            result = child.dfs(target_value)
            return result unless result.nil?
        end

        return nil

    end

    def bfs(target_value)
        #create an array with self
        #included thats going to be a queue FIFO
        #start with self.value and compare to target_value
        #if correct return self
        #else shovel the children of self into array and 
        queue = [self]
        
        until queue.empty?
            front = queue.shift
            # front = queue.pop
                if front.value == target_value
                    return front
                else
                    front.children.each do |child|
                        queue << child
                    end
                end
         end
        return nil
    end

    def inspect
        {value: value, 
        children: children.map {|child| child.value}}.inspect

    end







end