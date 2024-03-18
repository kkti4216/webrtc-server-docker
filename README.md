# webrtc signaling
## build
```
cd ..
git clone https://github.com/kkti4216/ayame-web-sdk-samples
cd ayame-web-sdk-samples
docker build -t webrtc-web .

cd ayame
git clone https://github.com/OpenAyame/ayame.git
cp Dockerfile ayame/
docker build -t webrtc-sig ./ayame
```
## start
```
docker-compose up -d
```
