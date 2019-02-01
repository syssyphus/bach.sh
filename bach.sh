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

        WAVEFORM="$(tail $0 | base64 -d | head -c $LEN)"
        yes "$WAVEFORM" | head -c $((SAMPLE_RATE / DURATION))
    fi
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

exit
1E6ckHLS+x8WK4O2knFrv6gF9jmNq2ej+118cYGrBZlqekRUh0YKSpCMaKQ1lJU4u5v6HRyLfCQZjEIERS3/x+XZZ0/kOGV2EOl5
5Vg1O6NEfAUUR9xDHG5eIo3sdvazSdokOgfB2ms9wY536GVS74MTzLE6kyehcXO9958JWeYneREJMi12/a8HizH4ynZFmgq1oR43
YYTjxjaLyke1+YWzJ3FegnXP829WNNBPoNr0biBitKdQULSJRLCkFfaSjyX1OO4Ygo1pyD6NDF3FgISonyYBcljIVuL9txTfarYJ
FMxmKtjfMBO9/OEIS8AkqouoYTjN0O+04/DsiOqJz2crO07ABWrXJOCMf4GqTkBQ0cht+W8S1f9bNmhrpXBrd1q4uvMLeSFYRpPA
OP3advDYjARZfkkX2cWTo1ppoSSzwyYrYX7pO8LVtVXX2B4kRDTD8tCjip6iq0+ZdoM48vfhBiQkAknBjtjP0e8xReEEcfNP3T3L
MROwU7oBpsObBF+Kw1n1c3nlZcsMpKNUvHmkQtsXs1aST9UvGweaL9dvDsGSivFdqL5oRZQZzrgrny2PncA0j11wIC6DjeZ3WYoI
DTkrkp/fdAqzYucnI51vrZIgI84gOPZ8ziT7VuVPIC2vs+Xf7XoNEupc5rb4FMu9rkQwO+L9L4j8UgHuELcPReE2I6EyY5nOvSPm
RC0V3oFhC+vCGvJqcFo5vJvbTotmcY3gUBjjxWSjchJ++jmc948inyLYgkrwgZrku4M531OsPa4p2tIyan7dIyFvBGLklCsx7bIy
NjzAsx2eaZc7JS6xL4mTsMgKD+tVDsAk6kJVLChGJyAk/ALOzB1wmSki1pGbaGbCN8e8o1Alk9a9qpEnFxYgIMLF9uL57s0lV9W2
v8LjphSBNdN43Z7qElu86lsVPXt2EDKeyidaxU1cSvtx+VYE/K8/uZ2Q5yxZ6wtWfVkQWLpPL8vgMHPAO6XHSLpsywMUtqWB7mmG
