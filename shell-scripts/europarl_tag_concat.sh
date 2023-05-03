for direc in /Users/Samuel/Desktop/tagfiles/good/*; do
    cd "$direc"
    for i in *;do mv "$i" "${i// /_}";done
    ls -t | xargs cat > newfile
done
