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
arp ${G[1]} ${A[2]} ${D[2]} ${G[2]} ${B[3]}

exit
cXFxb2xrZ2VjZGZmZ2lsbW5tbm1samloaGZjYWBfXFxbWltbXF1hYmRoamxvcnN2d3h4eHp8fX5/gYSHioyOjY6Ojo2LioeEgH18
fHx9f4GDhouPlJaanqKnqaysra2vr62qpqKfnJqZmZmXlZORkZGRkZCPjo6OjY2PkJGRkJCOjY2Oj5CQkZKSkpGQjYqFgX16eHZy
bWppaWhmZGJhYWJkZGVkZGVlZmZmZGRiYGFfXl5eXl1dXVtcXV5eX2FiYmVoa25ydnl6fYCDhomNkJKVl5ugpKesr7GytLOysbKw
r62tq6ikoJuWko2JhIB+fnx8fX5+foGDg4SFhISCgHx5d3V0dHV2eHp7fYCEiIyOkJKTlpeYmJeVlZSVk5KSkpKQjYqIhIF/fHl3
c25oYl1ZV1RSUVBRUlNWWVxeYGBgYmJkZWVlZmhqbG1tbGxtb3FwcHJ0dXd3dnV1dHNycHFydHZ2dnV1c3N0dXV0cm9ua2pqa21v
c3R0dHR0dXd5en2Ag4WGiIqKi42Oj5CRkZKSlJWWlpaVlpaZmpqcnqGkp6msr7Kztre2tbOztLS2ubu9vLu6uLW0s7Kwramop6ip
qKqrra+ytba2tra4uLi4uLi5urq6vLy8vb6+wMDAv768vLq3tbOxr62sq6moqKmop6alop6bmJeVlJWVk5CPjYmHhYSCgH59e3p6
fH5/fnx7end2c3FvbWpoZmNhX1xcXF5fXl5eX2BhYWJiYWFhY2NjY2NlZ2ttbm5ubGpqa2pra2pnZ2hqbG5xdHZ3d3h6fH2Ag4WH
i46Pj5CQjoyLi4yNjYyLiYaBfn17eXh1cm5qZmBcWFRSUU9OS0lISEdFREJCQkJDRUlNUldaW11eX2FiZWdpbG1vcHFwbWpmY19d
WlZRTk1OT1JUWFxgYWJiYmFhYmRlZmZmZmVkZWVkY2NhYF5cWlpbXF1fYWRmaGpqa2ppaWhoZ2RiYWJhYWFhY2VmaGloampsbnJ2
