BEGIN {
    FS=" ";
    OFS=" ";
    RS="\n";
    ORS="";
    for(i=0; i<NUM_MAS; i++) {
        masters[i] = 1;
    }
    for(j=0; j<NUM_WOR; j++) {
        workers[j] = 1;
    }
    for(k=0; k<TOTAL; k++) {
        items[k] = 0;
        # 0 -> Not Produced
        # 1 -> Produced
        # 2 -> Consumed
    }
    buffer = 0;
    ans = 1;
}
{
    if(buffer > BUF_SIZE || buffer < 0) {
        ans = 0;
    }

    if($1 == "Produced") {
        if(items[$2]==0) {
            if($5 < NUM_MAS && $5>=0 && masters[$5]==1) {
                items[$2] = 1;
                buffer++;
            }
            else {
                ans = 0;
            }
        }

        else {
            ans = 0; # 0 --> NO
        }
    }
    else if($1 == "Consumed") {
        if(items[$2]==1) {
            if($5 < NUM_WOR && $5>=0 && workers[$5]==1) {
                items[$2] = 2;
                buffer--;
            }
            else {
                ans = 0;
            }
        }
        else {
            ans = 0;
        }
    }
    else if($1 == "Master") {
        if(masters[$2]==1) {
            masters[$2] = 0;
        }
        else {
            ans = 0;
        }
    }
    else {
        if(workers[$2]==1) {
            workers[$2] = 0;
        }
        else {
            ans = 0;
        }
    }
    for(l=0; l<TOTAL; l++) {
        if(items[l]==1) {
            print l" ";
        }
    }
    print "\n";
}
END {
    for(i=0; i<TOTAL; i++) {
        if(items[i]!=2) {
            ans = 0;
            break;
        }
    }
    if(ans == 0) {
        print "NO\n"
    }
    else {
        print "YES\n"
    }
}