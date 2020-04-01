#!/usr/bin/env bash
README.md: guessinggame.sh
        @rm -f README.md
        @echo 'project title'>>README.md
        @echo 'name'>>README.md
        @echo $$(awk 'END{print NR}' guessinggame.sh) ' Lines of code' >>README.md
        @echo $$(stat -c "%y" guessinggame.sh) >>README.md 
