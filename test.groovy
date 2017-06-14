:plugin use tinkerpop.sugar
graph = JanusGraphFactory.build().
set("storage.backend", "cassandra").
set("storage.hostname", "cassandra").
set("index.search.backend", "elasticsearch").
set("index.search.elasticsearch.interface", "TRANSPORT_CLIENT").
set("index.search.hostname", "elasticsearch").
open();

GraphOfTheGodsFactory.load(graph);
g = graph.traversal()
saturn = g.V().has('name', 'saturn').next()
g.V(saturn).valueMap()
g.V(saturn).in('father').in('father').values('name')

