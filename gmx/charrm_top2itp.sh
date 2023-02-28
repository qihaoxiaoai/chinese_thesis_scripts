rm -f topol.top
sed '/^$/d' CNT.top > test.top1
sed -e '1,/^#include/d' test.top1 > test.top2
sed -e '/^\[ sys/,$d' test.top2 > test.top3
cp test.top3 CNT.itp
grep '#include' CNT.top >> topol.top
echo '#include "CNT.itp"' >> ./topol.top
echo '#include "./charmm36-jul2022.ff/spce.itp"' >> ./topol.top
echo -e "\n[ system ]\nCNT in water\n\n[ molecules ]\nCNT    1" >> ./topol.top
rm -f test.top*
