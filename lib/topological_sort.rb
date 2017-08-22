require_relative 'graph'

# Implementing topological sort using both Khan's and Tarian's algorithms

def topological_sort(vertices)
  results = []
  traversed_arr = []
  vertices.each do |vertex|
    unless traversed_arr.include?(vertex)
      dfs_visit(vertex, traversed_arr, res)
    end
  end
  results
end

def dfs_visit(vertex, traversed_arr, results)
  traversed_arr << vertex
  vertex.out_edges.each do |edge|
    to_vertex = edge.to_vertex
    if !explored.include?(to_vertex)
      dfs_visit(to_vertex, traversed_arr, results)
    end
  end
  results.unshift(vertex)
end
