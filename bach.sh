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

    LEN=$((SAMPLE_RATE / FREQ))
    PW=$((LEN / ((N % 8) + 2)))
    N=$((N + 1))

    MIN=$(printf '\x01')
    MAX=$(printf '\xFF')
    WAVEFORM=""

    for i in $(seq $PW); do
        WAVEFORM="$MIN$WAVEFORM"
    done

    for i in $(seq $((LEN - PW))); do
        WAVEFORM="$MAX$WAVEFORM"
    done

    for i in $(seq $((SAMPLE_RATE / (DURATION * LEN)))); do
        printf "$WAVEFORM"
    done
}

arp() {
    for i in $(seq 2); do
        note $1
        note $2
        
        for j in $(seq 2); do
            note $3
            note $4
            note $5
        done
    done
}

arp ${C[2]} ${E[2]} ${G[2]} ${C[3]} ${E[3]}
arp ${C[2]} ${D[2]} ${A[3]} ${D[3]} ${F[3]}
arp ${B[2]} ${D[2]} ${G[2]} ${D[3]} ${F[3]}
arp ${C[2]} ${E[2]} ${G[2]} ${C[3]} ${E[3]}

arp ${C[2]} ${E[2]} ${A[3]} ${E[3]} ${A[4]}
arp ${C[2]} ${D[2]} ${F_sharp[2]} ${A[3]} ${D[3]}
arp ${B[2]} ${D[2]} ${G[2]} ${D[3]} ${G[3]}
arp ${B[2]} ${C[2]} ${E[2]} ${G[2]} ${C[3]}

arp ${A[2]} ${C[2]} ${E[2]} ${G[2]} ${C[3]}
arp ${D[1]} ${A[2]} ${D[2]} ${F_sharp[2]} ${C[3]}
arp ${G[1]} ${B[2]} ${D[2]} ${G[2]} ${B[3]}
arp ${G[1]} ${A_sharp[2]} ${E[2]} ${G[2]} ${C_sharp[3]}

arp ${F[1]} ${A[2]} ${D[2]} ${A[3]} ${D[3]}
arp ${F[1]} ${G_sharp[1]} ${D[2]} ${F[2]} ${B[3]}
arp ${E[1]} ${G[1]} ${C[2]} ${G[2]} ${C[3]}
arp ${E[1]} ${F[1]} ${A[2]} ${C[2]} ${F[2]}

arp ${D[1]} ${F[1]} ${A[2]} ${C[2]} ${F[2]}
arp ${G[0]} ${D[1]} ${G[1]} ${B[2]} ${F[2]}
arp ${C[1]} ${E[1]} ${G[1]} ${C[2]} ${E[2]}
arp ${C[1]} ${G[1]} ${A_sharp[2]} ${C[2]} ${E[2]}

arp ${C[1]} ${G[1]} ${A_sharp[2]} ${C[2]} ${E[2]}
arp ${F[0]} ${F[1]} ${A[2]} ${C[2]} ${E[2]}
arp ${F_sharp[0]} ${C[1]} ${G[1]} ${C[2]} ${D_sharp[2]}
arp ${G_sharp[0]} ${F[1]} ${B[2]} ${C[2]} ${D[2]}

arp ${G[0]} ${F[1]} ${G[1]} ${B[2]} ${D[2]}
arp ${G[0]} ${E[1]} ${G[1]} ${C[2]} ${E[2]}
arp ${G[0]} ${D[1]} ${G[1]} ${C[2]} ${F[2]}
arp ${G[0]} ${D[1]} ${G[1]} ${B[2]} ${F[2]}

arp ${G[0]} ${D_sharp[1]} ${A[2]} ${C[2]} ${F_sharp[2]}
arp ${G[0]} ${E[1]} ${G[1]} ${C[2]} ${G[2]}
arp ${G[0]} ${D[1]} ${G[1]} ${C[2]} ${F[2]}
arp ${G[0]} ${D[1]} ${G[1]} ${D[2]} ${F[2]}

arp ${C[0]} ${C[1]} ${G[1]} ${A_sharp[2]} ${E[2]}

note ${C[0]}
note ${C[1]} 
note ${F[1]}
note ${A[2]}
note ${C[2]}
note ${F[2]}
note ${C[2]}
note ${A[2]}
note ${C[2]}
note ${A[2]}
note ${F[1]}
note ${D[1]}
note ${F[1]}
note ${D[1]}

note ${C[0]}
note ${C[1]} 
note ${G[2]}
note ${B[3]}
note ${D[3]}
note ${F[3]}
note ${D[3]}
note ${B[3]}
note ${D[3]}
note ${B[3]}
note ${G[2]}
note ${B[3]}
note ${D[2]}
note ${F[2]}
note ${E[2]}
note ${D[2]}

note ${C[0]}
note ${C[1]}
note ${E[2]}
note ${G[2]}
note ${C[3]} 2
