sed -i 's/UNL/CNT/' ./*/*.pdb
sed -i '/CONECT/d' ./*/*.pdb
sed -i '/H   CNT     1/d' ./*/*.pdb