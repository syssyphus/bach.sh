#!/bin/sh
# ./bach.sh  | aplay -r44100
SAMPLE_RATE=44100

A=(55 110 220 440 880)
A_sharp=(58 116 232 464 928)
B=(62 124 248 496 992)
C=(65 130 260 520 1040)
C_sharp=(69 138 276 552 1104)
D=(73 146 292 584 1168)
D_sharp=(78 156 312 624 1248)
E=(82 164 328 656 1312)
F=(87 174 348 696 1392)
F_sharp=(92 184 368 736 1472)
G=(98 196 392 784 1568)
G_sharp=(104 208 416 832 1664)

note() {
    FREQ=$1
    DURATION=${2:-4}

    if [ "$FREQ" != "P" ]; then
        LEN=$((SAMPLE_RATE / FREQ - 1))

        WAVEFORM="$(sort -Ru $0 | head -c $LEN)"
        yes "$WAVEFORM" | head -c $((SAMPLE_RATE / DURATION))
    fi
}


note ${C[2]}
note ${E[2]}
note ${G[2]} 
note ${C[3]}
note ${E[3]}
note ${G[2]} 
note ${C[3]}
note ${E[3]}

note ${C[2]}
note ${E[2]}
note ${G[2]} 
note ${C[3]}
note ${E[3]}
note ${G[2]} 
note ${C[3]}
note ${E[3]}
