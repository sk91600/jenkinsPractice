appName="demo"
word="1"
echo "$word"
word=`docker ps -a -q --no-trunc --filter name=^/"$appName"$`
echo "$word"
if [ -z "$word" ];
then
    echo "当前不存在该容器，直接进行启动该操作-------------------------------------"
elif [ -n "$word" ];
then
    echo "当前已存在容器，停止并移除该容器-------------------------------------"
    docker stop "$word"
    docker rm "$word"
elif [ "$word" == "1" ];
then
    echo "查询的信息有误，执行默认操作-------------------------------------"
    docker stop "$word"
    docker rm "$word"
fi
docker run -p 8010:8010 -d "$appName":latest --name "$appName"