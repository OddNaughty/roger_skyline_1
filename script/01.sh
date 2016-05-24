# !/bin/bash
# seven fields from /etc/passwd stored in $f1,f2...,$f7
#
echo "In file /etc/passwd"
while IFS=: read -r f1 f2 f3 f4 f5 f6 f7
do
    echo "User $f1 has $f3 UID and $f7 start command"
done < /etc/passwd
