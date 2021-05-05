class Stack():
    def __init__(self):
        self.stack = []

    def push(self,data):
        self.stack.append(data)

    def pop(self):
        _data = self.stack[-1]
        self.stack.remove(_data)
        return _data

    def __repr__(self):
        return f"{[element for element in self.stack]}"

if __name__ == "__main__":
    s = Stack()
    s.push(2)
    s.push(3)
    print(s)
    print(f"Popped : {s.pop()}")
    s.push(4)
    s.push(5)
    print(f"Popped : {s.pop()}")
    s.push(6)
    print(s)