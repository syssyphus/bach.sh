# Bach.sh

How to play
---
Just run

`./bwv846-prelude.sh | aplay`

Or

`./bwv846-prelude.sh | mpv -`

If noting works, you can just save output to a wav file and play it with any player:

`./bach.sh > prelude.wav`

Why
---
Because why not? Bash is a very limited language so using it to make music is really fun.

Compression
---
Surprisingly, bzip2 compresses its output to a size even smaller than the original .sh file. And if you turn off PWM in the code (comment line 42), you'll get this 13-line base64-encoded archive:

    QlpoOTFBWSZTWSMIR9EB3sD/8+BAQk91YQbIr6FzmGUmBBgQMBAABgRgAgAYAGjQBJ4AAAAABzTE
    wAJgAmAAEwABMOaYmABMAEwAAmAAJhzTEwAJgAmAAEwABMOaYmABMAEwAAmAAJgUpQQIQyEYoepg
    g8kHqfqYp7UCeU/jm2Pky2Zmb5dRxKUvEcygsjqVQWxQnlO0aChNklK855t2lmZw10GxKU2PKCHE
    IGkYgYfWyZjM0oSHAlWm7HoZY1IUcQlL0ut63U6NGMcgSVjsY2cB2GT7mWM+W7qxscgFzFKarsbG
    pSnYKTaazGH9TLGaY0Y01JBOdALV7Ha0OrDtOGg3YMcJElofYFHISBo9rrdS8TV0bv8tr3Grgxjp
    zEJ8wmwFBu5MOcYZZZnd5883006nB5GOM0y0aaG3Dj4+J28uoBqCU5Df6uTVadfweN2JUNx5HUEJ
    u8Hg9DWeM6NHF43JS86i2dAKjo5PkepqampzPS9Lc3Ov09Ha09XJzY3UqP1bfVt1up9G3P93dv0J
    OIRb9nBzY08XnSNXKUDZomzk2ocJJPc+bHkZnDyBd3d0VRY+vzacdeJtrpOZTjr5RMdKR18+Oz7y
    SQB93s+0KlqFSwIWVKIyohYFKsClX6aSUS0ikqwiGKiSxEKMIkWUkVMpEDAkMVSqsVCpgSiwJRfH
    QlGhKN32+z8t1JSbqSk+GgTSSVDJBQ9GgqU0FSnfy1IRrQlWVUk6eG2wl8NxLwwlVGpKqPw/Dbal
    KbSVDFFWFCYCVgKfFoi0QqxVKxUxJiTAmJCUk/PCoUk/EKl7Qhd9RC/IKVe+SiX4kQ7lRJfAhU7w
    VL40iB/0JD1qhU9YSi+8lH2KSk94T5SCh4CpT8yEd9VJPUJfoSqj9aUp70ov2KPaBH7gp/5F3hS+
    ap9EnuCf/F3JFOFCQIwhH0Q=
