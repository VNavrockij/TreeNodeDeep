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
    
    // addChild Methods
    func addChild(_ newChild: TreeNode) {
        children.append(newChild)
    }
    
    func addChild(_ newChildData: String) {
        children.append(TreeNode(data: newChildData))
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

// Add extension below:
extension TreeNode: Equatable {
    static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.data == rhs.data && lhs.children == rhs.children
    }
    
    
}


var clifford = TreeNode(data: "Clifford the Big Red Dog")
var puppy1 = TreeNode(data: "Fido")
var puppy2 = TreeNode(data: "Max")
clifford.addChild(puppy1)
clifford.addChild(puppy2)
print("Clifford has \(clifford.children.count) children.")
// Remove Fido Here
clifford.removeChild(puppy1)
print("Now Clifford only has \(clifford.children.count) child.")
