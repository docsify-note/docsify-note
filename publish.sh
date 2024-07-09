# docker run --name docsify-note -d -p 30000:3000 -v /data/docsify-note:/docs sujaykumarh/docsify serve
#scp -r * root@hw:/data/docsify-note

git add .
git commit -m $1
git push

echo "提交成功"