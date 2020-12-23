 # https://www.python-course.eu/graphs_python.php

# A graph is a representation of the connection between some entities called vertices or nodes: they can represent several things such as pieces of land in an archipelago.
# They can be connected together by edges, they could represent the bridges between the different islands.
# The purpose is not represent some geometrical feature such as distance but just to see if an element is connected to another

# The vertices can be represented by a dictionnary: the key is the label of the vertex, while the values are the labels of the vertices to which it is connected

example_graph = {'a' : ['c'], # vertex a is connected to vertex c
                 'b' : ['c','e'], # vertex b is connected to vertices c and e
                 'c' : ['a','b'], # and so on
                 'd' : ['c'],
                 'e' : ['b','c'],
                 'f' : []
                 } # f is isolated and not connected to any vertex

# The edges can be represented by a tuple, containing the two vertices which are the extremities of the edge
# An edge can be undirected (the connection exists in either direction) or directed (the connection goes from one vertex to another and is called
# an arc or directed edge ('arrow')

def generate_edges_set(graph):
    edges = set()
    for item in list(graph.items()):
        for value in item[1]:
            if (item[0],value) not in edges: #and (value,item[0]) not in edges if we only want the edge to appear once (?)
                edges.add((item[0],value))
    return edges

def generate_edges_list(graph):
    edges = []
    for item in list(graph.items()):
        for value in item[1]:
            if (item[0],value) not in edges: #and (value,item[0]) not in edges if we only want the edge to appear once (?)
                edges.append((item[0],value))
    return edges



mylist = generate_edges_list(example_graph)
#print(mylist)
# mylist=list(example_graph.items())
# print(mylist)

# print(type(mylist))

example_graph = {'a' : ['c'], # vertex a is connected to vertex c
                 'b' : ['c','e'], # vertex b is connected to vertices c and e
                 'c' : ['a','b'], # and so on
                 'd' : ['c'],
                 'e' : ['b','c'],
                 'f' : []
                 } # f is isolated and not connected to any vertex

class Graph():

    def __init__(self,dictionnary):
        self.nodes = set()
        self.edges = set()
        self.graph = dictionnary

        for item in list(self.graph.items()):
            self.nodes.add(item[0])
            for value in item[1]:
                if (item[0],value) not in self.edges: #and (value,item[0]) not in edges if we only want the edge to appear once (?)
                    self.edges.add((item[0],value))  


    def is_isolated(self,node_label):
        if self.graph[node_label] == []:
            return True
        else:
            return False

mygraph = Graph(example_graph)
print(mygraph.graph)
print(mygraph.nodes)
print(mygraph.edges)
print('a' in mygraph.nodes)
print(('a','c') in mygraph.edges)
print(mygraph.is_isolated('a'))
print(mygraph.is_isolated('f'))