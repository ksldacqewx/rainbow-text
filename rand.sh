#!/bin/bash
echo -en " \na\nb\nc\nd\ne\nf\ng\nh\ni\nj\nk\nl\nm\nn\no\np\nq\nr\ns\nt\nu\nv\nw\nx\ny\z\nA\nB\nC\nD\nE\nF\nG\nH\nI\nJ\nK\nL\nM\nN\nO\nP\nQ\nR\nS\nT\nU\nV\nW\nX\nY\nZ\n0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n-\n_\n+\n=\n{\n}\n[\n]\n|\n\\ \n:\n;\n\"\n'\n<\n,\n>\n.\n?\n" >"chars"
echo "$(for i in {0..255};do echo -e "\033[38;05;${i}m";done)" >>"chars"
while true;do
echo -en "$(shuf chars -n 1)"
done
