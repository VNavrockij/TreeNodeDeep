import Foundation

class TreeNode {
    
    // Instance Variables
    var data: String
    var children: [TreeNode]
    // var next: Node?
    
    // Initializer
    init(data: String) {
        self.data = data
        self.children = []
    }
}

var root = TreeNode(data: "Planting my first seed!")
print(root.data)
