a = Table[1, {i, 15}, {j, 20}];
nf = Count[Flatten[a], 1]!;
For[i = 1, i <= 15, i++, 
  For[j = 1, j <= 20, j++, 
   If[a[[i, j]] == 1, 
    nf = nf/(Total@a[[i, j ;;]] + Total@a[[i ;;, j]] - 1), Break]]];
nf
