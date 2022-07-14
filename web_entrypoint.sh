#!/bin/bash

echo "REACT_APP_KAKAO_APPKEY=5ff7b7a18b63ba62b62b81f7ea698a0a" > .env
echo "REACT_APP_KAKAO_REDIRECT_URI=http://10.133.30.30:3000/KakaoLogin" >> .env
echo "REACT_APP_IP=http://10.133.30.30:8088/" >> .env

npm start

nginx -g 'daemon off;'