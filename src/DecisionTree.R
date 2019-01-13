# Load the party package. It will automatically load other dependent packages.


library("party")

input.dat <- readingSkills[c(1:6),]

png(file = "decision_tree.png")
output.tree <- ctree(nativeSpeaker ~ age + shoeSize + score, data = input.dat)

# Plot the tree.
plot(output.tree)
dev.off()


