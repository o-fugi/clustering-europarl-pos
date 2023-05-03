i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/da/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-danish.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/da/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/de/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-german.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/de/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/el/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-greek.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/el/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/en/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-english.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/en/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/es/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-spanish.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/es/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/fi/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-finnish.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/fi/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/fr/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-french.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/fr/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/hu/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-hungarian.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/hu/"tags $f"
    ((++i < 10)) || break
done
 
i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/it/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-italian.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/it/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/nl/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-dutch.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/nl/"tags $f"
    ((++i < 10)) || break
 done
 
i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/pl/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-polish.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/pl/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/pt/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-portuguese.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/pt/"tags $f"
    ((++i < 10)) || break
 done
 
i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/ro/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-romanian.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/ro/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/sk/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-slovak.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/sk/"tags $f"
    ((++i < 10)) || break
done

i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/sl/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-slovenian.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/sl/"tags $f"
    ((++i < 10)) || break
done
    
i=0
for file in /Users/Samuel/clustering-europarl-pos/txt/sv/*.txt; do
    f="$(basename -- $file)"
    cmd/rnn-tagger-swedish.sh "$file" > /Users/Samuel/clustering-europarl-pos/txt/sv/"tags $f"
    ((++i < 10)) || break
done
