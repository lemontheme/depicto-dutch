; fails
(mrs::read-mrss-from-file (open "/home/lemontheme/Desktop/thedogsleeps2"))


;fails
(lkb::generate-from-mrs-internal 
    (mrs::read-mrss-from-file "/home/lemontheme/Desktop/thedogsleeps2"))


; generates, but not based on the MRS input :(
(do-generate-tty
    (mrs::read-mrs-from-file "/home/lemontheme/Desktop/thedogsleeps2"))


; "Warning: Non-structure argument NIL passed to ref of structure slot 1
NIL"
(lkb::generate-from-mrs
   (mrs::read-mrs-from-file "/home/lemontheme/Desktop/thedogsleeps2"))


; works! using explicit string

(lkb::generate-from-mrs
   (mrs::read-single-mrs-xml-from-string "<mrs>
<label vid='1'/><var vid='2'/>
<ep cfrom='-1' cto='-1'><spred>_def_q_rel</spred><label vid='3'/>
<fvpair><rargname>ARG0</rargname><var vid='4' sort='x'>
<extrapair><path>SPECI</path><value>BOOL</value></extrapair>
<extrapair><path>COG-ST</path><value>COG-ST</value></extrapair>
<extrapair><path>PNG.PER</path><value>3RD</value></extrapair>
<extrapair><path>PNG.NUM</path><value>SG</value></extrapair></var></fvpair>
<fvpair><rargname>RSTR</rargname><var vid='5' sort='h'></var></fvpair>
<fvpair><rargname>BODY</rargname><var vid='6' sort='h'></var></fvpair></ep>
<ep cfrom='-1' cto='-1'><spred>_dog_n_rel</spred><label vid='7'/>
<fvpair><rargname>ARG0</rargname><var vid='4' sort='x'>
<extrapair><path>SPECI</path><value>BOOL</value></extrapair>
<extrapair><path>COG-ST</path><value>COG-ST</value></extrapair>
<extrapair><path>PNG.PER</path><value>3RD</value></extrapair>
<extrapair><path>PNG.NUM</path><value>SG</value></extrapair></var></fvpair></ep>
<ep cfrom='-1' cto='-1'><spred>_sleep_v_rel</spred><label vid='8'/>
<fvpair><rargname>ARG0</rargname><var vid='2' sort='e'>
<extrapair><path>SF</path><value>PROP-OR-QUES</value></extrapair>
<extrapair><path>E.TENSE</path><value>TENSE</value></extrapair>
<extrapair><path>E.ASPECT</path><value>ASPECT</value></extrapair>
<extrapair><path>E.MOOD</path><value>MOOD</value></extrapair></var></fvpair>
<fvpair><rargname>ARG1</rargname><var vid='4' sort='x'>
<extrapair><path>SPECI</path><value>BOOL</value></extrapair>
<extrapair><path>COG-ST</path><value>COG-ST</value></extrapair>
<extrapair><path>PNG.PER</path><value>3RD</value></extrapair>
<extrapair><path>PNG.NUM</path><value>SG</value></extrapair></var></fvpair></ep>
<hcons hreln='qeq'><hi><var vid='5' sort='h'></var></hi><lo><var vid='7' sort='h'></var></lo></hcons>
</mrs>" )) 

;;;;


(read-sequence (open "/home/lemontheme/Desktop/thedogsleeps2"))

;; works!
(lkb::generate-from-mrs
   (mrs::read-single-mrs-xml-file "/home/lemontheme/Desktop/thedogsleeps2"))

;;

; works
(lkb::read-script-file-aux "/home/lemontheme/Dropbox/gramdev/mini-eng/lkb/script")

(lkb::read-script-file-aux "/home/lemontheme/Dropbox/gramdev/depicto/mini-dutch/lkb/script")
