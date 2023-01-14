
echo "$1" > nul
rm nul
echo making py file
echo -n "dHJ5OgogIGYgPSBvcGVuKCJjb3VudGVyLnR4dCIsICJyIikKZXhjZXB0OgogZiA9IG9wZW4oImNvdW50ZXIudHh0IiwgIngiKQogc2F5PTAKIGYud3JpdGUoc3RyKHNheSkpCiBmLmNsb3NlKCkgCiBmID0gb3BlbigiY291bnRlci50eHQiLCAiciIpCm51bT0oZi5yZWFkKCkpCmYuY2xvc2UoKQpmID0gb3BlbigiY291bnRlci50eHQiLCAidyIpCnRlPSJhIgpwcmludChudW0pCnRlPWludChudW0pCnRlPXRlKzEKbnVtPXN0cih0ZSkKZi53cml0ZShudW0pCmYuY2xvc2UoKQ==" | base64 -d > say.py

var=$(python3 say.py)

echo $var+" dosyasındadır"
mkdir -p "$var"
cd   "$var"
wget -c $1 -o file
split -b 94M file
cd ..

