#!/bin/bash
# ./bach.sh  | aplay -r44100
SAMPLE_RATE=44100
MUL=100

A=(5500 11000 22000 44000 88000)
A_sharp=(5827 11654 23308 46616 93233)
B=(6174 12347 24694 49388 98777)
C=(6541 13081 26163 52325 104650)
C_sharp=(6930 13859 27718 55437 110873)
D=(7342 14683 29366 58733 117466)
D_sharp=(7778 15556 31113 62225 124451)
E=(8241 16481 32963 65926 131851)
F=(8731 17461 34923 69846 139691)
F_sharp=(9250 18500 36999 73999 147998)
G=(9800 19600 39200 78399 156798)
G_sharp=(10383 20765 41530 83061 166122)

note() {
    FREQ=$1
    DURATION=${2:-4}

    LEN=$(((SAMPLE_RATE * MUL + (FREQ / 2)) / FREQ))
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

printf "RIFF\0\0\0\0WAVEfmt\x20\x10"
printf "\0\0\0\x01\0\x01\0\x44\xac"
printf "\0\0\x44\xac\0\0\x01\0\x08\0datai\xff\xff\xff"

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
