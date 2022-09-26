import Foundation

class TreeNode {
    
    // Instance Variables
    var data: String
    var children: [TreeNode]
    
    // Initializer
    init(data: String) {
        self.data = data
        self.children = []
    }
    
    // addChild Methods
    func addChild(_ newChild: TreeNode) {
        children.append(newChild)
    }
    func addChild(_ newChildData: String) {
        children.append(TreeNode(data: newChildData))
    }
    func addChildren(_ newChildren: [TreeNode]) {
        children.append(contentsOf: newChildren)
    }
    // removeChild Method
    func removeChild(_ nodeToRemove: TreeNode) {
        if children.isEmpty {
            return
        } else if children.contains(nodeToRemove) {
            children.removeAll() {$0 == nodeToRemove}
            return
        } else {
            for child in children {
                child.removeChild(nodeToRemove)
            }
        }
    }
}
extension TreeNode: Equatable {
    static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        lhs.data == rhs.data && lhs.children == rhs.children
    }
}
extension TreeNode: CustomStringConvertible {
    var description: String {
        return "\(data)"
    }
}


// Tree Class
class Tree {
    //Instance Variables
    var root: TreeNode
    
    // Initializer
    init(root: TreeNode) {
        self.root = root
    }

    // print Method
    func print() {
        printFrom(root)
    }

    
    // printFrom Method
    func printFrom(_ currentNode: TreeNode,_ depth: Int = 0) {
        let depthMarker = String(repeating: "–|", count: depth)
        Swift.print("\(depthMarker)\(currentNode)")
        for child in currentNode.children {
                    printFrom(child, depth + 1)
            printFrom(child, depth + 1)
                }
    }


}

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
patriarch.addChildren([child1, child2, child3, child4, child5, child6, child7])
child4.addChildren([grandchild1, grandchild2, grandchild3])
child6.addChildren([grandchild4, grandchild5, grandchild6])

let poeFamilyTree = Tree(root: patriarch)

poeFamilyTree.printFrom(child4)
print()
poeFamilyTree.print()
