for direc in /Users/Samuel/clustering-europarl-pos/tagfiles/*; do
    cd "$direc"
    for i in *;do mv "$i" "${i// /_}";done
    ls -t | xargs cat > newfile.txt
done
