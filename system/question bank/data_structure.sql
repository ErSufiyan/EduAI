USE eduai;

-- Insert Data Structures Questions

-- Easy Questions (1-20)
INSERT INTO quizzes (topic, difficulty, question, options, answer) VALUES
('Data Structures', 1, 'What is a data structure?', '["A way to organize and store data", "A type of algorithm", "A programming language", "A database"]', 'A way to organize and store data'),
('Data Structures', 1, 'Which data structure uses the LIFO principle?', '["Stack", "Queue", "Linked List", "Tree"]', 'Stack'),
('Data Structures', 1, 'What is the time complexity of accessing an element in an array?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Data Structures', 1, 'Which data structure uses the FIFO principle?', '["Queue", "Stack", "Linked List", "Tree"]', 'Queue'),
('Data Structures', 1, 'What is the time complexity of inserting an element at the end of a dynamic array?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Data Structures', 1, 'Which data structure is used to implement a priority queue?', '["Heap", "Stack", "Queue", "Linked List"]', 'Heap'),
('Data Structures', 1, 'What is the time complexity of searching in a binary search tree?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 1, 'Which data structure is used for recursion?', '["Stack", "Queue", "Linked List", "Tree"]', 'Stack'),
('Data Structures', 1, 'What is the time complexity of deleting an element from a linked list?', '["O(n)", "O(1)", "O(log n)", "O(n^2)"]', 'O(n)'),
('Data Structures', 1, 'Which data structure is used to represent a hierarchical relationship?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 1, 'What is the time complexity of inserting an element in a stack?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Data Structures', 1, 'Which data structure is used to implement a hash table?', '["Array", "Linked List", "Tree", "Stack"]', 'Array'),
('Data Structures', 1, 'What is the time complexity of searching in a hash table?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Data Structures', 1, 'Which data structure is used to implement a graph?', '["Adjacency List", "Stack", "Queue", "Tree"]', 'Adjacency List'),
('Data Structures', 1, 'What is the time complexity of inserting an element in a queue?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Data Structures', 1, 'Which data structure is used to implement a binary search tree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 1, 'What is the time complexity of deleting an element from a stack?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Data Structures', 1, 'Which data structure is used to implement a deque?', '["Doubly Linked List", "Stack", "Queue", "Tree"]', 'Doubly Linked List'),
('Data Structures', 1, 'What is the time complexity of inserting an element in a linked list?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Data Structures', 1, 'Which data structure is used to implement a trie?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree');

-- Medium Questions (21-40)
INSERT INTO quizzes (topic, difficulty, question, options, answer) VALUES
('Data Structures', 2, 'What is the time complexity of searching in a balanced binary search tree?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 2, 'Which data structure is used to implement a LRU cache?', '["Doubly Linked List and Hash Map", "Stack", "Queue", "Tree"]', 'Doubly Linked List and Hash Map'),
('Data Structures', 2, 'What is the time complexity of inserting an element in a heap?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 2, 'Which data structure is used to implement a disjoint set?', '["Array", "Linked List", "Tree", "Stack"]', 'Array'),
('Data Structures', 2, 'What is the time complexity of finding the minimum element in a min-heap?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Data Structures', 2, 'Which data structure is used to implement a suffix tree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 2, 'What is the time complexity of deleting an element from a heap?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 2, 'Which data structure is used to implement a segment tree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 2, 'What is the time complexity of searching in a trie?', '["O(m)", "O(n)", "O(log n)", "O(n^2)"]', 'O(m)'),
('Data Structures', 2, 'Which data structure is used to implement a B-tree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 2, 'What is the time complexity of inserting an element in a balanced binary search tree?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 2, 'Which data structure is used to implement a red-black tree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 2, 'What is the time complexity of deleting an element from a balanced binary search tree?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 2, 'Which data structure is used to implement a AVL tree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 2, 'What is the time complexity of searching in a hash table with chaining?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Data Structures', 2, 'Which data structure is used to implement a skip list?', '["Linked List", "Stack", "Queue", "Tree"]', 'Linked List'),
('Data Structures', 2, 'What is the time complexity of inserting an element in a trie?', '["O(m)", "O(n)", "O(log n)", "O(n^2)"]', 'O(m)'),
('Data Structures', 2, 'Which data structure is used to implement a Fenwick tree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 2, 'What is the time complexity of searching in a segment tree?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 2, 'Which data structure is used to implement a suffix array?', '["Array", "Linked List", "Tree", "Stack"]', 'Array');

-- Hard Questions (41-60)
INSERT INTO quizzes (topic, difficulty, question, options, answer) VALUES
('Data Structures', 3, 'What is the time complexity of searching in a B-tree?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 3, 'Which data structure is used to implement a persistent data structure?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 3, 'What is the time complexity of inserting an element in a red-black tree?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 3, 'Which data structure is used to implement a suffix automaton?', '["Graph", "Stack", "Queue", "Tree"]', 'Graph'),
('Data Structures', 3, 'What is the time complexity of deleting an element from a red-black tree?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 3, 'Which data structure is used to implement a Fibonacci heap?', '["Heap", "Stack", "Queue", "Linked List"]', 'Heap'),
('Data Structures', 3, 'What is the time complexity of searching in a suffix tree?', '["O(m)", "O(n)", "O(log n)", "O(n^2)"]', 'O(m)'),
('Data Structures', 3, 'Which data structure is used to implement a van Emde Boas tree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 3, 'What is the time complexity of inserting an element in a B-tree?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 3, 'Which data structure is used to implement a Cartesian tree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 3, 'What is the time complexity of deleting an element from a B-tree?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 3, 'Which data structure is used to implement a range tree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 3, 'What is the time complexity of searching in a Fibonacci heap?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Data Structures', 3, 'Which data structure is used to implement a k-d tree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 3, 'What is the time complexity of inserting an element in a Fibonacci heap?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Data Structures', 3, 'Which data structure is used to implement a quadtree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 3, 'What is the time complexity of deleting an element from a Fibonacci heap?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 3, 'Which data structure is used to implement a octree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree'),
('Data Structures', 3, 'What is the time complexity of searching in a k-d tree?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Data Structures', 3, 'Which data structure is used to implement a R-tree?', '["Tree", "Stack", "Queue", "Linked List"]', 'Tree');