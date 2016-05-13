dir=$(dirname "$0")
echo "0 0 * * * '$dir/04.sh' >> /etc/crontab
