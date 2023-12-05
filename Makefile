.PHONY: all update_ayame_web_sdk build_webrtc_web_image update_webrtc_signaling down up logs

all: update_ayame_web_sdk build_webrtc_web_image update_webrtc_signaling down up logs

update_ayame_web_sdk:
	cd ../ayame-web-sdk-samples && git pull

build_webrtc_web_image:
	cd ../ayame-web-sdk-samples && docker build -t kkti4216/webrtc-web:linux .

update_webrtc_signaling:
	cd ../webrtc-signaling && git pull

down:
	cd ../webrtc-signaling && docker-compose down

up:
	cd ../webrtc-signaling && docker-compose up -d

logs:
	cd ../webrtc-signaling && docker-compose logs -f

