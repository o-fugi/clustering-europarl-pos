i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/bg/long/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-bulgarian.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/bg/long/"tags $f"
    ((++i < 10)) || break
done
       
i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/cs/long/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-czech.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/cs/long/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/et/long/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-estonian.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/et/long/"tags $f"
    ((++i < 10)) || break
done
