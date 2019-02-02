# Bach.sh

How to play
---
Just run

`./bach.sh | aplay -r44100`

Or, if aplay doesn't work on your system:

`./bach.sh > prelude.raw`

and use audacity to export it as a raw audio. The format is Unsigned 8-bit PCM, Mono with 44100 Hz sample rate

Why
---
Because why not? Bash is a very limited language so using it to make music is really fun.

Compression
---
Surprisingly, bzip2 compresses its output to a size even smaller than the original .sh file. And if you turn off PWM in the code (comment line 24), you'll get this 12-line base64-encoded archive:

    QlpoOTFBWSZTWSe4z6cDRel/86AAAk81YQbIiIFjGEEGABgQMBAABgBgAgAYAGjQBH4AAAAADGQy
    Gg0GjQBoAGhhjIZDQaDRoA0ADQwxkMhoNBo0AaABoYYyGQ0Gg0aANAA0MClKEBGiZMpiA8mk9IZN
    MmBUtAhbVELeFKuMlEuREOaokushU6AqXbSIHcEh3qhU9oSi8CUeKkpPuE+EgofoKlP2IR+9VJP4
    EvMlVHpSlPklF6lHzAj+wU+iL6hS+yp90nqE8iSQB+AqWBUsCFlSiMqIWBSrApVklEsikqwiGKiS
    xEKMIkWUkVMpEDAkMVSqsVCpgSiwJRYSjCUYpKTFJSYEySVDJBQwVKYKlMIRlCVZVSTBLCpEwlVG
    UpTJKhiirChMBKwFMRYhViqVipiTEmBMIlAHofEpS+R6FBZHyVQWxQn7nkNBQmySlep67mlmZv10
    GxKU2PQEOAQNIxAw+bGmWmMzRCQ3kq03MebLGpCjgEpebreTqc2jGOIJKx0Y2bx0Mn9MsZ9tzqxs
    cQFyFKaro2NSlOgpNprMYf4ZYzTGjGmpIJyoBavo7mh1Ydxv0G5gxvkSWh/IUcRIGjzdbqXY1c25
    5tr6mrexjnyEJ6hNgKDc4sOUYZZZnf454btObe7WOE0y0aaG2/h2cD2ceYDUEpxG7x4tVp1f67HR
    KhuHa6ghNzyfZ7ms7Tm0cHa4qXgotnMCo5uL0Pg1NTU5Hve9uNx1+/m7mnw4uTG5So/5t+W3W6n4
    bcvi793Mk4BFu6b3JjTs8UjVxlA2aJs4tqG+STyfhj2Mzf7Au/v5qose7w04a8DbXScinDX2iY50
    jr5cNn/i7kinChIE9xn04A==
