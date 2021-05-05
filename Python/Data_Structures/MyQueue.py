class MyQueue():
    def __init__(self):
        self.queue = []

    def push(self,data):
        self.queue.insert(0,data)

    def pop(self):
        if len(self.queue) == 0:
            return []
        _data = self.queue[-1]
        self.queue.remove(_data)
        return _data

    def __repr__(self):
        return f"{[element for element in self.queue]}"

if __name__ == "__main__":
    q = MyQueue()
    q.push(2)
    q.push(3)
    print(q)
    print(f"Popped : {q.pop()}")
    print(q)