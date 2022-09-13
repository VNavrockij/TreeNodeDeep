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

// Add extension below:
extension TreeNode: Equatable {
    static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.data == rhs.data && lhs.children == rhs.children
    }
    
    
}




// E. A. Poe Family Tree
var patriarch = TreeNode(data: "David Poe")
var child1 = TreeNode(data: "John Poe")
var child2 = TreeNode(data: "William Poe")
var child3 = TreeNode(data: "George Poe")
var child4 = TreeNode(data: "David Poe")
var child5 = TreeNode(data: "Samuel Poe")
var child6 = TreeNode(data: "Maria Poe (Clemm)")
var child7 = TreeNode(data: "Elizabeth Poe")
var grandchild1 = TreeNode(data: "William Poe")
var grandchild2 = TreeNode(data: "Edgar Allan Poe")
var grandchild3 = TreeNode(data: "Rosalie Poe")
var grandchild4 = TreeNode(data: "Henry Clemm")
var grandchild5 = TreeNode(data: "Virginia Marie Clemm")
var grandchild6 = TreeNode(data: "Virigina Eliza Clemm")
patriarch.addChild(child1)
patriarch.addChild(child2)
patriarch.addChild(child3)
patriarch.addChild(child4)
patriarch.addChild(child5)
patriarch.addChild(child6)
patriarch.addChild(child7)
child4.addChild(grandchild1)
child4.addChild(grandchild2)
child4.addChild(grandchild3)
child6.addChild(grandchild4)
child6.addChild(grandchild5)
child6.addChild(grandchild6)

// Add Equatable tests here:
print(patriarch == child4)
print(child2 == grandchild1)
