import sys
a = sys.argv
n = len(sys.argv)
w = 10

hindi = ['bhagwan','maa'   ,'NA'    ,'pita','bhai'   ,'NA'  ,'paani','pedh','sundar','ladki']
english = ['god'  ,'mother','sister','NA'  ,'brother','love','water','tree','NA'    ,'NA']
punjabi = ['rab'  ,'NA'    ,'bhain' ,'piyo','bhra'   ,'pyar','NA'   ,'rukh','soni'  ,'kudi']

if n==3:
    lang = []
    if sys.argv[2]=='hindi':
        lang.extend(hindi)
    elif sys.argv[2]=='english':
        lang.extend(english)
    elif sys.argv[2]=='punjabi':
        lang.extend(punjabi)
    lang_new = [x for x in lang if x!='NA']
    lang_new.sort(reverse=True)
    print(lang_new)
    
lang,lang2=[],[]
if n>3:
    if sys.argv[2]=='hindi':
        lang.extend(hindi)
    elif sys.argv[2]=='english':
        lang.extend(english)
    elif sys.argv[2]=='punjabi':
        lang.extend(punjabi)
            
    if sys.argv[3]=='hindi':
        lang2.extend(hindi)
    elif sys.argv[3]=='english':
        lang2.extend(english)
    elif sys.argv[3]=='punjabi':
        lang2.extend(punjabi)     
 
if n==4:
    l = []
    for i in range(w):
        if lang[i]!='NA' and lang2[i]!='NA':
            t = (lang[i],lang2[i])
            l.append(t)
    l.sort()
    print(l)

if n==5:
    t=-1
    for i in range(w):
        if lang[i]==a[4]:
            t = i
            break
    if t>-1 and lang2[t]!='NA':
        print(lang2[t])
    else:
        print("UNK")