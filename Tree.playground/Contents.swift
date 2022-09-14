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

// Equatable Extension
extension TreeNode: Equatable {
    static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.data == rhs.data && lhs.children == rhs.children
    }
}

// CustomStringConvertible Extension (Add Code Here)
extension TreeNode: CustomStringConvertible {
    var description: String {
        var text = "Data: \(data)\n"
        text += "  # of children: \(children.count)\n"
        if !children.isEmpty {
            text += "   Children: ["
            for child in children {
                text += "\(child.data), "
            }
            text.removeLast(2)
            text += "]"
        }
        return text
    }
}


var clifford = TreeNode(data: "Clifford the Big Red Dog")
var puppy1 = TreeNode(data: "Fido")
var puppy2 = TreeNode(data: "Max")
clifford.addChild(puppy1)
clifford.addChild(puppy2)

