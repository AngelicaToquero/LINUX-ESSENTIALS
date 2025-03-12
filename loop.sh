# For Loop
# ------Example 1 -------
# for pusa in Megoming Netnet Letlet; do
#      echo "Mga Posa: $pusa"
# done

#------Example 2 -------
# for file in *.txt; do
#     echo "Processing file: $file"
# done

#------Example 3 -------
# for num in 1 2 3 4 5; do
#     echo "Number: $num"
# done

#While Loop
#------Example 1 -------
# count=1
# while [ $count -le 5 ]; do
#     echo "Count: $count"
#     ((count++))
# done

# #------Example 2 -------
# while IFS= read -r line; do
#     echo "Line: $line"
# done < myfile.txt

# #Until Loop
# #------Example 1 -------
# num=1
# until [ $num -gt 5 ]; do
#     echo "Number: $num"
#     ((num++))
# done

#Loop Control Statement: BREAK
# for i in {1..10}; do
#     if [ $i -eq 5 ]; then   
#         echo "Stopping loop at $i"
#         break
#     fi
#     echo "Number: $i"
# done

#CONTINUE
# for i in {1..5}; do
#     if [ $i -eq 3 ]; then   
#         echo "Skipping $i"
#         continue
#     fi
#     echo "Number: $i"
# done

# #Practical Example: Automating File Processing
# for file in *.txt; do
#     mv "$file" "${file%.txt}.bak"

