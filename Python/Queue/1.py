# write a function which takes in input two queues of integers
# and returns an ordered queue containing the values in the
# input queues

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

def retrieve_queue(queue):
    if len(queue.queue) == 0:
        return []
    else:
        return [queue.pop()] + retrieve_queue(queue)


def ordered_queue_mergers(queue1: MyQueue, queue2: MyQueue) -> MyQueue:
    _list1 = retrieve_queue(queue1)
    _list1.sort()
    _list2 = retrieve_queue(queue2)
    _list2.sort()
    _merged_queue = MyQueue()
    idx_2 = 0
    for element in _list1:
        while idx_2 < len(_list2) and element > _list2[idx_2]:
            _merged_queue.push(_list2[idx_2])
            idx_2 += 1
        _merged_queue.push(element)
    while idx_2 < len(_list2):
        _merged_queue.push(_list2[idx_2])
        idx_2 += 1
    return _merged_queue

if __name__ == "__main__":
    q1 = MyQueue()
    q1.push(5)
    q1.push(3)
    q1.push(1)
    q2 = MyQueue()
    q2.push(2)
    q2.push(4)
    q2.push(4)
    q2.push(4)
    q2.push(1)
    print(ordered_queue_mergers(q1,q2))


