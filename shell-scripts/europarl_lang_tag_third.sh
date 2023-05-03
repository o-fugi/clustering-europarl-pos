i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/hu/long/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-hungarian.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/hu/long/"tags $f"
    ((++i < 10)) || break
done
       
i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/sl/long/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-slovenian.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/sl/long/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/sk/long/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-slovak.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/sk/long/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/ro/long/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-romanian.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/ro/long/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/pl/long/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-polish.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/pl/long/"tags $f"
    ((++i < 10)) || break
done

