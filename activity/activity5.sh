# #!/bin/bash

# 1. Write a while loop that prints numbers from 1 to 10
echo "Numbers from 1 to 10:"
i=1
while [ $i -le 10 ]
do
    echo $i
    ((i++))
done

# 2. Modify the script to skip even numbers using continue
echo "Skipping even numbers"
i=1
while [ $i -le 10 ]
do
    if (( i % 2 == 0 )); then
        ((i++))
        continue
    fi
    echo $i
    ((i++))
done

# # 3. Write a script that renames .jpg files to .png
# for file in *.jpg; do
#     if [ -f "$file" ]; then
#         mv "$file" "${file%.jpg}.png"
#     fi
# done

# echo "Task completed!"
