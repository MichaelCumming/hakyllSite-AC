module Graph 
where


--Graph Node
data Node = Node {
	nodeId 		:: NodeID,
 	nodeName 	:: String,
 	nodeType 	:: NodeType
} deriving (Show)

--Synonym for NodeID
type NodeID = Int

--Various Graph Nodes types
data NodeType = City | Source
	deriving (Show)

--Edge between Nodes
data Edge = Edge {
	edgeId		:: EdgeID,
	edgeType	:: EdgeType,
	src			:: Node,
	target		:: Node
} deriving (Show)

--Synonym for EdgeID
type EdgeID = Int

--various Edge types
data EdgeType = Dir_single | Dir_bi | Dir_none
	deriving (Show)

--Sample data
berlin = Node {nodeId = 1, nodeType = City, nodeName = "Berlin"}
toronto = Node {nodeId = 2, nodeType = City, nodeName = "Toronto"}
edge1_2 = Edge {edgeId = 1, edgeType = Dir_single, src=berlin, target=toronto}

