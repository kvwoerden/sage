load(SAGE_ROOT+"/FPMod/fpmods.py")

commands = ["M = FP_Module([0, 1], [[Sq(2), Sq(1)], [0, Sq(2)], [Sq(3), 0]])",
            "x = M([1,0])",
            "print(x == M.gen(0))",
            "y = M.gen(1)",
            "z = x*Sq(2)*Sq(1)*Sq(2)",
            "print(z)",
            "print(z.nf())",
            "print(y*Sq(2)*Sq(1))",
            "print((y*Sq(2)*Sq(1)).nf())",
            "T = FP_Module([0, 2, 4], [[Sq(4), 0, 1], [Sq(1, 1), Sq(2), 1]])",
            "z = T.gen(0)*Sq(2) + T.gen(1)",
            "print(z)",
            "TT,g,h = T.min_pres()",
            "print(TT.degs)",
            "print(TT.rels)",
            "MM, g, h = M.min_pres()",
            "print(MM.rels)",
            "S, incl, proj = MM.submodule([y])",
            "print(S.degs)",
            "print(S.rels)",
            "for i in range(7):\n    print(\"basis for MM in dimension {0}:\
            {1}\".format(i, MM[i]))",
            "J = FP_Module([])",
            "print(J.conn())",
            "print(J.alg())",
            "N = FP_Module([1], [[Sq(1)]])",
            "Z = N.suspension(4)",
            "print(Z.degs)",
            "h = FP_Hom(N, M, [x*Sq(1)])",
            "try:\n    g = FP_Hom(M, N, [0, N.gen(0)])\nexcept ValueError as e:\n\
                    print(e)",
            "K, i = h.kernel()",
            "print(K.degs)",
            "print(i.values)",
            "C, p = h.cokernel()",
            "print(C.degs)",
            "print(C.rels)",
            "CC, pp = h.cokernel('minimal')",
            "print(CC.rels)",
            "I, e, m = h.image()",
            "print(I.degs)",
            "print(I.rels)",
            "Hko = FP_Module([0], [[Sq(1)], [Sq(2)]])",
            "R = Hko.resolution(5, verbose=true)",
            "print(is_complex(R))",
            "print(is_exact(R))",
             "for i in range(6):\n\
                    print(\"Stage {0}\\n\
Degrees: {1}\\n\
Values of R[i]: {2}\".format(i, R[i].domain.degs, R[i].values))"]



for command in commands:
    print("input: "+command)
    exec(command)


