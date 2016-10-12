CSSLayout is a tiny Swift wrapper around Facebook's [css-layout](https://github.com/facebook/css-layout) framework.

### Basic Usage

Imagine a simple UIView, with two subviews (represented as `containerNode`, `childNode` and `otherChildNode` below).

```swift
let containerNode = CSSNode(flexDirection: CSSFlexDirectionColumn, alignItems: CSSAlignCenter)
let childNode = CSSNode(size: CSSSize(width: 50, height: 50))
let otherChildNode = CSSNode(alignSelf: CSSAlignStretch)
containerNode.children = [childNode, otherChildNode]

let computedLayout = containerNode.layout()

// At this point, computedLayout can be used to set the frames of the views represented by these nodes.
container.frame = computedLayout.frame
child.frame = computedLayout.children[0].frame
otherChild.frame = computedLayout.children[1].frame
```
