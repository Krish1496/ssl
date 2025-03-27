BEGIN{
    FS=","
    OFS=","
    print "Entity,Duration,Principal,Type,CompoundRate,Amount"
}
NR>1{
    split($2,arr," ");
    yr = arr[1]
    amt = $3;
    while(yr--) amt *= $5;
    print $0,amt ;
}