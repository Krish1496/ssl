BEGIN{
    FS=","
    OFS=","
}
NR>1{
    type[$4] += $6;
    sum += $6;
}
END{
    printf "Total:%d\n",sum
    n = asort(type,sorted)
    for(i=n; i>0; i--) {
        for( t in type ) {
            if(type[t] == sorted[i]){
                print t ":" int(type[t]*100/sum);
                delete type[t];
                break;
            }
        }
    }
    # for(i=length(type); i>0; i--) {
    #     # printf "%s:%d\n",sorted[i], type[sorted[i]]*100/sum ;
    #     print i ":" int(sorted[i]*100/sum);
    # }
    
    # PROCINFO["sorted_in"] = "@val_num_desc"
    # for( i in type ) {
    #     printf "%s:%d\n",i,type[i]*100/sum ;
    # }
}