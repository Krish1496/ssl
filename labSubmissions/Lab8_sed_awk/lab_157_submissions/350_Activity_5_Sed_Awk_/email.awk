BEGIN{
    FS=",";
    OFS=",";
    RS="\n";
    ORS="\n";
}
NR==1{
    print $0, "Email-ID"
}
NR>1{
    printf "%s,%s%s@surveycorps.com\n",$0,$2,$4
    # print $0, $2$4"@surveycorps.com"
}