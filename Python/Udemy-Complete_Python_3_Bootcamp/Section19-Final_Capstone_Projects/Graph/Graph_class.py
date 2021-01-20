# https://www.python-course.eu/graphs_python.php

# A graph is a representation of the connection between some entities called vertices or nodes: they can represent several things such as pieces of land in an archipelago.
# They can be connected together by edges, they could represent the bridges between the different islands.
# The purpose is not represent some geometrical feature such as distance but just to see if an element is connected to another

# The vertices can be represented by a dictionnary: the key is the label of the vertex, while the values are the labels of the vertices to which it is connected

example_graph = {'a' : ['c'], # vertex a is connected to vertex c
                 'b' : ['c','e','h','i'], # vertex b is connected to vertices c and e
                 'c' : ['a','b','d','e','i'], # and so on
                 'd' : ['c'],
                 'e' : ['b','c','g'],
                 'f' : [],
                 'g' : ['e','j'],
                 'h' : ['b','i'],
                 'i' : ['b','c','h'],
                 'j' : ['g'],
                 'k' : ['l','m'],
                 'l' : ['k','m'],
                 'm' : ['k','l']
                 } # f is isolated and not connected to any vertex

# The edges can be represented by a tuple, containing the two vertices which are the extremities of the edge
# An edge can be undirected (the connection exists in either direction) or directed (the connection goes from one vertex to another and is called
# an arc or directed edge ('arrow')

class Graph():
    '''
    Initialize a graph from a given dictionnary. Store the nodes and edges in two sets.
    '''
    def __init__(self,dictionnary):
        self.nodes = set()
        self.edges = set()
        self.graph = dictionnary

        for item in list(self.graph.items()):
            self.nodes.add(item[0])
            for value in item[1]:
                if (item[0],value) not in self.edges: #and (value,item[0]) not in edges if we only want the edge to appear once (?)
                    self.edges.add((item[0],value))


    def add_node(self,label,neighbors):
        '''
        Add a node with given label along with the list of nodes it is connected to
        '''
        self.nodes.add(label)
        self.graph[label]=neighbors
        for value in self.graph[label]:
            if (label,value) not in self.edges:
                self.edges.add((label,value))
        for node in neighbors:
            self.graph[node].append(label)

    def remove_node(self,label):
        '''
        Removes a node along with the edges containing it
        '''
        self.nodes.discard(label)
        for node in self.graph.pop(label):
            self.graph[node].remove(label)
            self.edges.discard((label,node))
            self.edges.discard((node,label))

    def add_edge(self,node1,node2):
        '''
        Add a two-ways connection between node1 and node2
        '''
        self.graph[node1].append(node2)
        self.graph[node2].append(node1)
        self.edges.add((node1,node2))
        self.edges.add((node2,node1))

    def remove_edge(self,node1,node2):
        '''
        Removes the two-ways connection between node1 and node2
        '''
        self.graph[node1].remove(node2)
        self.graph[node2].remove(node1)
        self.edges.discard((node1,node2))
        self.edges.discard((node2,node1))

    def is_connected(self):
        '''
        Check if the graph has any isolated node and returns a list of them
        '''
        isolated_nodes=[]
        for node in self.nodes:
            if self.graph[node]==[]:
                isolated_nodes.append(node)
            else:
                continue
        if isolated_nodes==[]:
            print("Graph is connected")
        else:
            print(f"Graph has the following isolated node(s): {isolated_nodes}")


    def isolated_node(self,node_label):
        '''
        Returns True if the node is isolated (has no connection), False otherwise
        '''
        return self.graph[node_label] == []


    def find_rank(self,node1,node2):
        '''
        Find the (minimum) number of neighbors between node1 and node2
        Returns a tuple containing the rank (int) and the list of neighbors explored (list of list, one list for each rank)
        '''
        if self.isolated_node(node1):
            print(f"{node1} is isolated: rank is not defined.")
            return (None,None)
        if self.isolated_node(node2):
            print(f"{node2} is isolated: rank is not defined.")
            return (None,None)

        rank=0
        neighbor_list_1=[node1]
        visited_nodes=set(node1)
        visited_neighbor=[[node1]]

        search=True

        while search:

            neighbor_list_2=[]
            for node in neighbor_list_1:
                for neighbor in self.graph[node]:
                    if neighbor == node2:
                        neighbor_list_2.append(node2)
                        search=False
                        break
                    elif self.graph[neighbor] == [node1]:
                        continue
                    elif neighbor not in visited_nodes:
                        neighbor_list_2.append(neighbor)
                        visited_nodes.add(neighbor)
                    else:
                        continue
            if neighbor_list_2 == []:
                print("No path can be found")
                return (None,visited_neighbor)
            neighbor_list_1=neighbor_list_2
            visited_neighbor.append(neighbor_list_2)
        rank = len(visited_neighbor)
        return (rank,visited_neighbor)

    def create_shortest_path(self,node1,node2):
        '''
        Creates a path between node1 and node2 (returns a list of connected nodes constituing the path)
        Returns one of the possible path with minimal length
        Returns none if no path can be found
        '''
        if self.isolated_node(node1):
            print(f"{node1} is isolated: no path can be found.")
            return None
        elif self.isolated_node(node2):
            print(f"{node2} is isolated: no path can be found.")
            return None

        rank,visited_neighbor=self.find_rank(node1,node2)

        if rank is None:
            return None

        visited_neighbor.pop()

        path=[node2]
        current_node = node2
        path_creation=True
        while path_creation:
            for neighbor in self.graph[current_node]:
                if neighbor == node1:
                    path.append(node1)
                    path_creation = False
                    break

                elif neighbor in visited_neighbor[-1]:
                    visited_neighbor.pop()
                    path.append(neighbor)
                    current_node=neighbor
                    break
                else:
                    pass

        path.reverse()
        return path

    def __str__(self):
        return f"{self.graph}"
    # def create_path_recursive(self,node1,node2,path=[],visited_nodes=set()):
    #     '''
    #     Creates a path between node1 and node2 (returns a list of connected nodes constituing the path)
    #     Returns none if no path can be found
    #     '''
    #     if self.is_isolated(node1):
    #         print(f"{node1} is isolated: no path can be found.")
    #         return None
    #     elif self.is_isolated(node2):
    #         print(f"{node2} is isolated: no path can be found.")
    #         return None

    #     visited_nodes.add(node1)
    #     path.append(node1)

    #     print(f'{self.graph[node1]}')

    #     '''
    #     I don't know how to find the SHORTEST path
    #     ok recursive function was stupid i must search
    # for neighbor by iterating over "rank" (1 link away, 2 links way, etc.) and not search each neighbor for each beighbor for each neighbor ...
    #     '''
    #     if node1 == node2:
    #         return path
    #     else:
    #         for neighbor in self.graph[node1]:
    #             if neighbor == node2:
    #                 current_node = neighbor
    #                 break
    #             elif neighbor in visited_nodes:
    #                 continue
    #             elif self.graph[neighbor] == [node1]:
    #                 continue
    #             else:
    #                 current_node=neighbor

    #         return self.create_path_recursive(current_node,node2,path,visited_nodes)


if __name__ == "__main__":


    mygraph = Graph(example_graph)

    #print(mygraph.is_connected())