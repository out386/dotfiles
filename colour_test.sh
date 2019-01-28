for i in {0..255}
do
    printf "\e[38;5;${i}m${i} \033[0m"
done
printf "\n"
