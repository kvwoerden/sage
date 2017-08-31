load(SAGE_ROOT+"/FPMod/fpmods.py")
import pprint
pp = pprint.PrettyPrinter(width=2)

N = FP_Module([0], [[Sq(1)], [Sq(2)], [Sq(4)]])

L = 3 # Length of resolution

print("Computing a resolution of A//A(2) of length {0}\n".format(L))
R = N.resolution(L, verbose=true)
print("")
for i in range(L+1):
    print("Degrees in stage {0}:".format(i))
    print(R[i].kernel()[0].degs)
    print("Relations in stage {0}:".format(i))
    for rel in R[i].kernel()[0].rels:
        print(rel)
    print("")
#{1}\n\
#Relations in stage {0}:\n\
#{2}\n".format(i, R[i].kernel()[0].degs, R[i].kernel()[0].rels))


