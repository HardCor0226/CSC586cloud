!/bin/bash

sudo cat grep sshd.\*Failed /var/log/auth.log | less
