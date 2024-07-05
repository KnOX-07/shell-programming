#! /bin/sh

cp MyFile1 MyFile2

num_lines=$(wc -l < MyFile2)
num_words=$(wc -w < MyFile2)
num_chars=$(wc -c < MyFile2)
permission=$(stat -c "%a" MyFile2)

echo "Information about Myfile2: "
echo "Number of lines: $num_lines"
echo "Number of words: $num_words"
echo "Number of characters: $num_chars"
echo "Permission bits: $permission"

#Change the first sentence of MyFile2
#sed -i '1s/This is some content in MyFile1./This is a new content in MyFile2./' MyFile2

#Compare MyFile1 and MyFile2 to show the mismatch
#echo "Mismatch between MyFile1 and MyFile2:"
#diff MyFile1 MyFile2
