for file in *.out ; do
    echo "$@" >> "$file"
done
