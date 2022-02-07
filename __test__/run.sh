set -x
for dir in $(find . -name '*.d' -print)
do
    node $dir
done
