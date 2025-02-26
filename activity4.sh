echo "Enter Your Exam Score:"
read examscore

# Check Valid Exam Score (0-100)
if ! [[ "$examscore" =~ ^[0-9]+$ ]] || [ "$examscore" -lt 0 ] || [ "$examscore" -gt 100 ]; then
    echo "Invalid Input! Please enter an exam score from 0-100."
    exit 1
fi

# Criteria Using Case
case $examscore in 
  100|9[0-9]) echo "Grade A";;
  8[0-9]) echo "Grade B";;
  7[0-9]) echo "Grade C";;
  6[0-9]) echo "Grade D";;
  *) echo "Grade F";;
esac

# #Criteria Using If-Elif-fi
# if [ "$examscore" -ge 90 ]; then
#     echo "Grade A"
# elif [ "$examscore" -ge 80 ]; then
#     echo "Grade B"
# elif [ "$examscore" -ge 70 ]; then
#     echo "Grade C"
# elif [ "$examscore" -ge 60 ]; then
#     echo "Grade D"
# else
#     echo "Grade F"
# fi
./activity4.sh