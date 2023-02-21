sed '/^$/d' CNT.top >test.top1
sed -e '1,/^#include/d' test.top1 > test.top2
sed -e '/^\[ sys/,$d' test.top2 > test.top3
cp test.top3 CNT.itp
rm -f test.top*
