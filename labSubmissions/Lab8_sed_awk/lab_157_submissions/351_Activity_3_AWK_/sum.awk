BEGIN{
    FS=","
    OFS=","
    # sum = 0
}

{
    print
    if(NR>=2) {
        # sum += $4
        arr[$3] += $4
        # arr2[$3] += $4
    }
}
END{
    sum = 0;
    for( key in arr ) {
        sum += arr[key];
    }
    print "====="
    print "Net : " sum
    asorti(arr, sorted_arr_key)
    # sorted_arr_key is a array of key ( indexed 1,2,...n )
    for(i=1; i<=length(sorted_arr_key); i++) {
        print sorted_arr_key[i] " : " arr[sorted_arr_key[i]]
    }
}