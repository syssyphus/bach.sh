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

    QlpoOTFBWSZTWS3c6aQDR/J/86AAAk89QQTImMBmCEEGABgQIAgAAwBAAgAMACjQBH4eiIqgAAGN
    NBoAZNAZGmhiaMMaaDQAyaAyNNDE0YY00GgBk0BkaaGJowTVKoAGgDQAAAMFKUIBAKemp6QZ6kxM
    maTAqWgQtqiFvClXGSiXMpDoqJLsKlTtBUu5SoHgEh4qhU8glF5io9FJSesgoewT+QlT+kqV3gkv
    CpPKkCvQiL1pRfRUfUCPsCn3Jf8FL8qnsk+wTrJEgH6CpYFSwIWVKIyohYFKsqiGJFJiRSZRKskE
    MhSTKELKELKqEyqhMiFVZFRSyCBioVMCUWCBWCoxSUmKIpkkqGSChgSphIDCEZVSTKqSZUmUJSyk
    CsIixIRiUWKjFRgEYCVhFMpMqiZBGVFkhiUSAfM/wpS+h8ygsj6KoLYoT4HUaChNklK+J13NLMzf
    roNiUpsfUSHAIGkYgYf6xplpjM0QkN4qtNzHyZY1FKOASl8nY+7o5tGMcahSsdrGzeO0yeDLGe25
    0xscSC5ClNV2tjUpTtFJtNZjD8GWM0xoxpqSCcqAWr4vFodMPE36DcwY3yJLQ/BKOIkDR1djou5q
    5tzq2vyat7GOfIQnzCbAUG5xYcowyyzPL3Z57tObe72OE0y0aaG2/h3cDw48wGoqU4jd7uLVadPZ
    3O1KhuHe6BCbnxdX7tZ3nNo4O9xUvNRbOYFRzcXyPe1NTU5Hq9W43HZ683i09/FyY3KVHVt6bdjo
    +Dbl1eW7mScAi3du9yY07vcUauMoGzRNnFtQ3ySeb9MeDM3+CLy8uaqLHp56cNeBtrpORThr+wmO
    dI7OXDZ/4u5IpwoSBbudNIA=
