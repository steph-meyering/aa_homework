  class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end
  end

  class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end
    
    def peek
        @queue[0]
    end
  end

  class Map

    def initialize
        @map = []
    end

    def set(key, value)
        pair = [key, value]
        @map.each do |tup|
            if tup[0] == key
                tup[1] = value
                return
            end
        end
        @map << pair
    end

    def get(key)
        @map.each do |tup|
            return tup if tup[0] == key
        end
    end

    def delete(key)
        @map.each_with_index do |tup, i|
            @map.delete_at(i) if tup[0] == key
        end
    end

    def show
        @map
    end
    
  end