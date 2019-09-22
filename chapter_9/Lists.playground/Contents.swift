import UIKit

var bucketList = ["Climb Mt. Everest"]
var newItems = [
    "Fly hot air balloon to Fiji",
    "Watch the Lord of the Rings trilogy in one day",
    "Go on a walkabout",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]

bucketList.append(" in Australia")
print(bucketList.count)
print(bucketList[0...])
bucketList += newItems
bucketList.remove(at: 2)
bucketList[0] = "Climb Mt. Kilimanjaro"
print(bucketList[0...])

//bucketList.insert("Toboggan across Alaska", atIndex: 2)
bucketList
