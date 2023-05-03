for file in /Users/Samuel/clustering-europarl-pos/tagfiles/Concatenated/*.txt; do
    f="$(basename -- $file)"
    grep -v -e '^<' -e '^ID' -e '^LANGUAGE' -e '^NAME' -e '^[a-zA-Z]*>' "$file" > "cleaned $f"
done
