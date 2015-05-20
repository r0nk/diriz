echo "digraph dir {"
find -maxdepth $1   |\
 rev |\
 cut -d '/' -f 1,2 |\
 rev |\
 sed "s/\//\" -> \"/" |\
 sed "s/^/	\"/g" |\
 sed "s/$/\"/g"
echo "}"
