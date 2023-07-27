read -p "Enter the size of  chessboard: " board_size

if [ "$board_size" -lt 0 ]; then
    echo "Invalid Input"
    exit 1
else
    black_square=$(echo -e "\e[40m  \e[0m")
    white_square=$(echo -e "\e[47m  \e[0m")

    for((i = 1; i<= size; i++)); do

        for((j=1; j<= size; j++)); do

            sum=$((i+j))

            if((sum % 2 == 0)); then
                echo -n "$white_square"
                # echo "0"
            else
                echo -n "$black_square"
                # echo "1"
            fi
        done
        echo    #For Next Line
    done

fi;
