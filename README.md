# CS360_2018_Introduction_to_Database

##Term Project
Implement a python program that builds a B+ tree for a table

**B+ tree constraints**
- Internal nodes contain the keys
- Leaf nodes contain <key, v alue> pairs
- Order 𝑑of the B+ tree: 3 or 4
- The number of <key, value> pairs: 𝑚
- Root node: 1≤𝑚≤𝑑−1
- Internal node and leaf node: 𝑑/2−1≤𝑚≤𝑑−1
- The key of the B+ tree should use a pair of two attributes
- You should decide the order of the keys


**B+ tree Operations**

- LOAD: Read a table and build a B+ tree for a specific tuples
- Input argument: Start tuple ID, End tuple ID Insert tuples from start tuple ID to end tuple ID into the B+ tree
- PRINT : Print the whole contents of the B+ tree Show the contents of all B+ tree nodes by the breadth first manner
- INSERT : Insert a tuple into the B+ tree Input argument: Tuple ID (identifier) If the B+ tree has already the key of the tuple, append the tuple ID to the corresponding
value Otherwise, create a new <key , value > pair and insert it into the B+ tree node
- DELETE: Delete a tuple from the B+ tree