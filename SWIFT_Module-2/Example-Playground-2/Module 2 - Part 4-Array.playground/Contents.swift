//: Playground - noun: a place where people can play
let names = ["Larry", "Moe", "Curly"]
names[0]
names[1..<3]
names[1...2]
names[1...1]
names[1..<1]

var colors = ["red","green","blue"]

colors.append("orange")
colors += ["purple"]

colors

//colors.append(UIColor.darkGrayColor())
//
//names.append("shemp")
//names += ["shemp"]

colors.insert("brown", at: 2)
colors

colors[2] = "magneta"
colors

//colors[10] = "pink"

colors.remove(at: 0)
colors

colors.removeAll()
colors.capacity

colors = ["red","green","blue","value"]
colors.removeAll(keepingCapacity: true)
colors.capacity

colors.isEmpty

colors.append(contentsOf: ["red","green","blue"])

colors.capacity

colors.count
colors.isEmpty

colors.reserveCapacity(10)
colors.count
colors.capacity


colors.reverse()
colors

var myArray  = ["kiran", (12, 14)] as [Any]
