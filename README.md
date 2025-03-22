# 시각 장애인을 위한 버스 탑승 도우미 : 버스 내 객체와의 거리를 음성으로 출력

## 서비스 소개
이 서비스는 시각장애인이 버스를 타고 내릴 때 전반적으로 필요한 부분을 도와주는 서비스입니다.<br>
<br>
해당 서비스는 버스 탑승에 필요한 각 물체가 어디에 위치해있는지 음성으로 알려주는 것이 목적입니다.<br>
먼저 탑승을 원하는 버스가 진입하면 해당 번호의 버스가 자신과 얼마나 가까이 있는지 알려주며 버스 입구까지 위치를 안내합니다.<br>
승차 후엔 카드 단말기와 빈 좌석을 안내하며 이후 하차벨 안내를 통해 버스를 편히 이용할 수 있도록 돕습니다.<br>

<br>
<br>

## 모델 구조
![캡스톤이미지](https://user-images.githubusercontent.com/44723287/84027141-7bdfb300-a9c9-11ea-978e-0625cd3c90bd.JPG)

<br>
<br>

## 사용 모델
### 1. 객체 인식 (object detection)
<div style="width:80%; margin:0 auto;">
<img src = "https://github.com/user-attachments/assets/a798e73d-40ff-4ba6-b358-7071fb3335a6" width="30%">
<img src = "https://github.com/user-attachments/assets/00b3f31b-b07c-4e24-a500-28b993135e99" width="30%">
</div>

- Model : SSD detection
- Language : Python (tensorflow)
<br>

### 2. 숫자 인식 (OCR)

- Framework : MATLAB
<br>

### 3. 거리 측정

- Camera : Intel realsense camer d415
- Language : C++
<br>

### 4. 음성 출력 (TTS)

- Library : Sapi
- Language : C++
<br>
