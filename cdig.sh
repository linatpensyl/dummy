NS=cs5700cdnproject.ccs.neu.edu
NAME=cs5700cdn.example.com
port=41000

                IP=`dig +short +time=2 +tries=1 -p $port @$NS $NAME | head -1`
                if [[ $IP =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
                   wget -O /dev/null http://$IP:$port/wiki/Main_Page
                fi
