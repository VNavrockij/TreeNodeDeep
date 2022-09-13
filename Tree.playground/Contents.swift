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
    
    func addChild(_ newChild: TreeNode) {
        children.append(newChild)
    }
    
    func addChild(_ newChildData: String) {
        children.append(TreeNode(data: newChildData))
    }
}

var root = TreeNode(data: "Planting my first seed!")
print(root.children.isEmpty)
let branch1 = TreeNode(data: "Your tree is ")
root.addChild(branch1)
root.addChild("growing every day.")
print(root.children.isEmpty)
