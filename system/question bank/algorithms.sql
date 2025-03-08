USE eduai;

-- Insert Algorithms Questions

-- Easy Questions (1-20)
INSERT INTO quizzes (topic, difficulty, question, options, answer) VALUES
('Algorithms', 1, 'What is the time complexity of a linear search algorithm?', '["O(n)", "O(log n)", "O(n^2)", "O(1)"]', 'O(n)'),
('Algorithms', 1, 'Which sorting algorithm has the worst-case time complexity of O(n^2)?', '["Bubble Sort", "Merge Sort", "Quick Sort", "Heap Sort"]', 'Bubble Sort'),
('Algorithms', 1, 'What is the time complexity of binary search in a sorted array?', '["O(log n)", "O(n)", "O(n^2)", "O(1)"]', 'O(log n)'),
('Algorithms', 1, 'Which data structure uses the LIFO principle?', '["Stack", "Queue", "Linked List", "Tree"]', 'Stack'),
('Algorithms', 1, 'What is the main advantage of using a hash table?', '["Fast lookups", "Sorted data", "Easy to implement", "Low memory usage"]', 'Fast lookups'),
('Algorithms', 1, 'Which algorithm is used to find the shortest path in a weighted graph?', '["Dijkstra\'s Algorithm", "BFS", "DFS", "Kruskal\'s Algorithm"]', 'Dijkstra\'s Algorithm'),
('Algorithms', 1, 'What is the time complexity of inserting an element at the end of a dynamic array?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Algorithms', 1, 'Which algorithm is used to find the minimum spanning tree of a graph?', '["Kruskal\'s Algorithm", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Kruskal\'s Algorithm'),
('Algorithms', 1, 'What is the time complexity of the merge sort algorithm?', '["O(n log n)", "O(n^2)", "O(n)", "O(log n)"]', 'O(n log n)'),
('Algorithms', 1, 'Which data structure uses the FIFO principle?', '["Queue", "Stack", "Linked List", "Tree"]', 'Queue'),
('Algorithms', 1, 'What is the time complexity of the bubble sort algorithm in the worst case?', '["O(n^2)", "O(n log n)", "O(n)", "O(log n)"]', 'O(n^2)'),
('Algorithms', 1, 'Which algorithm is used to detect cycles in a graph?', '["DFS", "BFS", "Dijkstra\'s Algorithm", "Kruskal\'s Algorithm"]', 'DFS'),
('Algorithms', 1, 'What is the time complexity of accessing an element in an array?', '["O(1)", "O(n)", "O(log n)", "O(n^2)"]', 'O(1)'),
('Algorithms', 1, 'Which algorithm is used to solve the Tower of Hanoi problem?', '["Recursion", "Dynamic Programming", "Greedy Algorithm", "Backtracking"]', 'Recursion'),
('Algorithms', 1, 'What is the time complexity of the quicksort algorithm in the average case?', '["O(n log n)", "O(n^2)", "O(n)", "O(log n)"]', 'O(n log n)'),
('Algorithms', 1, 'Which data structure is used to implement a priority queue?', '["Heap", "Stack", "Queue", "Linked List"]', 'Heap'),
('Algorithms', 1, 'What is the time complexity of the selection sort algorithm?', '["O(n^2)", "O(n log n)", "O(n)", "O(log n)"]', 'O(n^2)'),
('Algorithms', 1, 'Which algorithm is used to find the maximum subarray sum?', '["Kadane\'s Algorithm", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Kadane\'s Algorithm'),
('Algorithms', 1, 'What is the time complexity of the insertion sort algorithm in the worst case?', '["O(n^2)", "O(n log n)", "O(n)", "O(log n)"]', 'O(n^2)'),
('Algorithms', 1, 'Which algorithm is used to find the shortest path in an unweighted graph?', '["BFS", "DFS", "Dijkstra\'s Algorithm", "Kruskal\'s Algorithm"]', 'BFS');

-- Medium Questions (21-40)
INSERT INTO quizzes (topic, difficulty, question, options, answer) VALUES
('Algorithms', 2, 'What is the time complexity of the heap sort algorithm?', '["O(n log n)", "O(n^2)", "O(n)", "O(log n)"]', 'O(n log n)'),
('Algorithms', 2, 'Which algorithm is used to find the longest common subsequence?', '["Dynamic Programming", "Greedy Algorithm", "Backtracking", "Recursion"]', 'Dynamic Programming'),
('Algorithms', 2, 'What is the time complexity of the Floyd-Warshall algorithm?', '["O(n^3)", "O(n^2)", "O(n log n)", "O(n)"]', 'O(n^3)'),
('Algorithms', 2, 'Which algorithm is used to find the strongly connected components in a graph?', '["Kosaraju\'s Algorithm", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Kosaraju\'s Algorithm'),
('Algorithms', 2, 'What is the time complexity of the Bellman-Ford algorithm?', '["O(V*E)", "O(V^2)", "O(V log V)", "O(E log V)"]', 'O(V*E)'),
('Algorithms', 2, 'Which algorithm is used to find the maximum flow in a network?', '["Ford-Fulkerson Algorithm", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Ford-Fulkerson Algorithm'),
('Algorithms', 2, 'What is the time complexity of the radix sort algorithm?', '["O(nk)", "O(n log n)", "O(n^2)", "O(n)"]', 'O(nk)'),
('Algorithms', 2, 'Which algorithm is used to find the topological sort of a graph?', '["DFS", "BFS", "Dijkstra\'s Algorithm", "Kruskal\'s Algorithm"]', 'DFS'),
('Algorithms', 2, 'What is the time complexity of the A* search algorithm?', '["O(b^d)", "O(n^2)", "O(n log n)", "O(n)"]', 'O(b^d)'),
('Algorithms', 2, 'Which algorithm is used to find the minimum spanning tree of a graph?', '["Prim\'s Algorithm", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Prim\'s Algorithm'),
('Algorithms', 2, 'What is the time complexity of the counting sort algorithm?', '["O(n+k)", "O(n log n)", "O(n^2)", "O(n)"]', 'O(n+k)'),
('Algorithms', 2, 'Which algorithm is used to solve the knapsack problem?', '["Dynamic Programming", "Greedy Algorithm", "Backtracking", "Recursion"]', 'Dynamic Programming'),
('Algorithms', 2, 'What is the time complexity of the shell sort algorithm?', '["O(n log n)", "O(n^2)", "O(n)", "O(log n)"]', 'O(n log n)'),
('Algorithms', 2, 'Which algorithm is used to find the articulation points in a graph?', '["DFS", "BFS", "Dijkstra\'s Algorithm", "Kruskal\'s Algorithm"]', 'DFS'),
('Algorithms', 2, 'What is the time complexity of the bucket sort algorithm?', '["O(n+k)", "O(n log n)", "O(n^2)", "O(n)"]', 'O(n+k)'),
('Algorithms', 2, 'Which algorithm is used to solve the N-Queens problem?', '["Backtracking", "Dynamic Programming", "Greedy Algorithm", "Recursion"]', 'Backtracking'),
('Algorithms', 2, 'What is the time complexity of the comb sort algorithm?', '["O(n^2)", "O(n log n)", "O(n)", "O(log n)"]', 'O(n^2)'),
('Algorithms', 2, 'Which algorithm is used to find the bridges in a graph?', '["DFS", "BFS", "Dijkstra\'s Algorithm", "Kruskal\'s Algorithm"]', 'DFS'),
('Algorithms', 2, 'What is the time complexity of the pigeonhole sort algorithm?', '["O(n+k)", "O(n log n)", "O(n^2)", "O(n)"]', 'O(n+k)'),
('Algorithms', 2, 'Which algorithm is used to solve the traveling salesman problem?', '["Dynamic Programming", "Greedy Algorithm", "Backtracking", "Recursion"]', 'Dynamic Programming');

-- Hard Questions (41-60)
INSERT INTO quizzes (topic, difficulty, question, options, answer) VALUES
('Algorithms', 3, 'What is the time complexity of the Strassen algorithm for matrix multiplication?', '["O(n^2.81)", "O(n^3)", "O(n^2)", "O(n log n)"]', 'O(n^2.81)'),
('Algorithms', 3, 'Which algorithm is used to find the maximum bipartite matching?', '["Hopcroft-Karp Algorithm", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Hopcroft-Karp Algorithm'),
('Algorithms', 3, 'What is the time complexity of the Karatsuba algorithm for multiplication?', '["O(n^1.59)", "O(n^2)", "O(n log n)", "O(n)"]', 'O(n^1.59)'),
('Algorithms', 3, 'Which algorithm is used to find the convex hull of a set of points?', '["Graham Scan", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Graham Scan'),
('Algorithms', 3, 'What is the time complexity of the Knuth-Morris-Pratt algorithm?', '["O(n+m)", "O(n log n)", "O(n^2)", "O(n)"]', 'O(n+m)'),
('Algorithms', 3, 'Which algorithm is used to find the longest increasing subsequence?', '["Dynamic Programming", "Greedy Algorithm", "Backtracking", "Recursion"]', 'Dynamic Programming'),
('Algorithms', 3, 'What is the time complexity of the Rabin-Karp algorithm?', '["O(n+m)", "O(n log n)", "O(n^2)", "O(n)"]', 'O(n+m)'),
('Algorithms', 3, 'Which algorithm is used to find the maximum flow in a network with multiple sources and sinks?', '["Edmonds-Karp Algorithm", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Edmonds-Karp Algorithm'),
('Algorithms', 3, 'What is the time complexity of the Boyer-Moore algorithm?', '["O(n+m)", "O(n log n)", "O(n^2)", "O(n)"]', 'O(n+m)'),
('Algorithms', 3, 'Which algorithm is used to find the minimum cut in a graph?', '["Stoer-Wagner Algorithm", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Stoer-Wagner Algorithm'),
('Algorithms', 3, 'What is the time complexity of the Aho-Corasick algorithm?', '["O(n+m+z)", "O(n log n)", "O(n^2)", "O(n)"]', 'O(n+m+z)'),
('Algorithms', 3, 'Which algorithm is used to find the maximum matching in a general graph?', '["Blossom Algorithm", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Blossom Algorithm'),
('Algorithms', 3, 'What is the time complexity of the FFT algorithm?', '["O(n log n)", "O(n^2)", "O(n)", "O(log n)"]', 'O(n log n)'),
('Algorithms', 3, 'Which algorithm is used to find the shortest path in a graph with negative weights?', '["Bellman-Ford Algorithm", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Bellman-Ford Algorithm'),
('Algorithms', 3, 'What is the time complexity of the suffix array construction algorithm?', '["O(n log n)", "O(n^2)", "O(n)", "O(log n)"]', 'O(n log n)'),
('Algorithms', 3, 'Which algorithm is used to find the maximum flow in a planar graph?', '["Planar Flow Algorithm", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Planar Flow Algorithm'),
('Algorithms', 3, 'What is the time complexity of the Miller-Rabin primality test?', '["O(k log^3 n)", "O(n^2)", "O(n)", "O(log n)"]', 'O(k log^3 n)'),
('Algorithms', 3, 'Which algorithm is used to find the minimum spanning tree in a dense graph?', '["Prim\'s Algorithm with Fibonacci Heap", "Dijkstra\'s Algorithm", "BFS", "DFS"]', 'Prim\'s Algorithm with Fibonacci Heap'),
('Algorithms', 3, 'What is the time complexity of the Dinic\'s algorithm for maximum flow?', '["O(V^2 E)", "O(V E)", "O(V log V)", "O(E log V)"]', 'O(V^2 E)'),
('Algorithms', 3, 'Which algorithm is used to find the shortest path in a graph with non-negative weights?', '["Dijkstra\'s Algorithm", "Bellman-Ford Algorithm", "BFS", "DFS"]', 'Dijkstra\'s Algorithm');