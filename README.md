# 내 차 팔기(Selling my car)

## 초기기획 & ERD
자동차 번호 입력으로 등록 된 차량 정보와 시세 정보를 불러오며 판매까지 이어지는 서비스를 제공합니다. <br>
접수 된 견적은 관리자 페이지를 통해 지점 별 딜러 배정 및 견적 상태 관리가 가능합니다.
### ERD
![내차팔기](https://blog.kakaocdn.net/dn/dHB62d/btrMXkD9qPp/O3F25PlItUy98WSDUYmLSk/img.png)
### Main Service Flow

**User flow**
![Main Service Flow](https://user-images.githubusercontent.com/97112697/178914034-95d0754b-a354-4a43-bf43-bb4c81c13149.png)
<p>
- 견적서 등록 후 단계 마다(견적서 접수 → 딜러배정 → 방문상담 → 판매요청 → 판매완료) 알림 발송
</p>

**Admin flow**

고객 요청한 주소와 제일 가까운 지점으로 지점 배정 > 해당 지점 딜러들에게 알림 발송 > 메인페이지 > 차량 정보 리스트페이지 > 차량 상세 페이지 > 딜러 지정 > 상담진행

### 초기기획 및 구현 목표
**User Page**
<p>
1. 차량 번호를 통한 회원 확인 <br>
2. 카카오 로그인 인증 및 회원가입 <br>
3. 차량 정보 조회 <br>
- DB 내 차량 정보 호출 <br>
- 차량 시세 조회 및 그래프 출력 <br>
4. 차량 변동 정보 입력 <br>
- 차량 사진 압축 업로드 <br>
5. 개인 정보 입력 <br>
- 카카오 맵을 이용한 주소 검색 및 입력 <br>
- 카카오 맵 마커를 이용한 현재 위치 이동 <br>
6. 내 견적 확인 <br>
7. 견적 상태 알림 <br>
</p>

**Admin Page**
<p>
1. 딜러 회원가입, 로그인 <br>
2. 고객이 요청한 주소와 가장 가까운 지점으로 자동 배정 <br>
3. 자동배정 된 지점의 소속된 딜러들에게 알림 <br>
4. 차량 리스트 소속지점, 날짜별, 딜러별 검색 및 필터링 <br>
5. 차량 상세 페이지, 딜러 지정 및 상담 기록, 견적상태 등록 <br>
</p>

## 개발기간 및 팀원

### 개발기간
2022.06. ~ 2022.07. (4주간)

### 팀원 소개
| 개발 분야 | 팀원 명 |
| ------- | ------- |
| 프론트엔드 | 박슬기, 윤경연 |
| 백엔드 | 최혜인, 박준형 |

## 기술 스택 및 구현 기능
### 적용 기술
Python, Django, MariaDB

### 백엔드 업무 담당
최혜인 - DB 모델링, 고객 로그인 API, 딜러 회원가입/로그인 API, 견적서 API, 알림 API, 어드민 API <br>
박준형 - DB 모델링, 고객 회원가입/로그인 API <br>

### 구현 기능
**User Page**
<p>
1. 차량 번호를 통한 로그인 <br>
- 입력한 차량번호가 없을 경우 <br>
&nbsp;&nbsp;&nbsp;→ 회원가입 진행 필요 안내 문구 출력 <br>
- 입력한 차량번호가 이미 등록되어 있을 경우 <br>
&nbsp;&nbsp;&nbsp;→ 작성 중인 견적서가 있을 경우 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;→ 마지막으로 저장된 페이지 안내 문구 출력 <br>
&nbsp;&nbsp;&nbsp;→ 작성 완료된 견적서가 있을 경우 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;→ 견적서 확인페이지로 이동 안내 문구 출력 <br>
2. 회원가입 시 카카오 API을 이용해 인증 진행 <br>
- 회원가입 시 차량번호, 소유자 일치 여부 확인 <br>
&nbsp;&nbsp;&nbsp;* 추후 배포 시 <a href="https://hyein-resume.notion.site/API-a6092a6daf9b449599b095698eb7cbc7"> car365 API </a> 사용 차량정보 호출 예정 / 현재 대체 데이터베이스 구축 <br>
3. 차량번호로 DB 내 차량 정보 호출 <br>
&nbsp;&nbsp;&nbsp;* 추후 배포 시 <a href="https://hyein-resume.notion.site/API-a6092a6daf9b449599b095698eb7cbc7"> car365 API </a> 사용 차량정보 호출 예정 / 현재 대체 데이터베이스 구축 <br>
4. 차량 시세 조회 및 그래프 출력 <br>
- 입력한 차량과 동일한 차량이름, 트림, 연식을 가지고 있는 데이터 필터링 후 정보 출력 <br>
&nbsp;&nbsp;&nbsp;* 추후 배포 시 <a href="https://hyein-resume.notion.site/API-a6092a6daf9b449599b095698eb7cbc7"> car365 API </a> 사용 차량정보 호출 예정 / 현재 대체 데이터베이스 구축 <br>
5. 고객 견적서 입력 <br>
- 견적서 입력 중 고객 이탈 시 정보 저장 필요, 중간 저장 <br>
- Pillow 이용 차량 사진 서버에 저장 
- 견적서 등록, 확인, 수정, 삭제 구현 <br>
6. 고객 개인 정보 입력 <br>
- 카카오 맵을 이용한 주소 검색 및 입력 <br>
- 카카오내비 API 사용, 입력한 주소와 가장 가까운 지점(카카오내비에서 지원하는 사거리 초과시 최단 직선거리 계산 후 가장 가까운 지점으로 배정)으로 자동 배정 <br>
7. 고객 견적 확인 및 견적 상태 알림 <br>
- 견적 상세 확인 페이지 및 견적 상태 알림 구현 <br>
</p>

**Admin Page**
<p>
1. 딜러 회원가입, 로그인 <br>
- 정규식을 이용해 비밀번호 유효성 검사 <br>
- bcrypt 를 이용해 비밀번호 암호화 <br>
- 로그인 시 jwt 토큰 발행 <br>
2. 고객이 요청한 주소와 가장 가까운 지점으로 자동 배정 <br>
3. 자동배정 된 지점의 소속된 딜러들에게 알림 <br>
4. 차량 리스트 소속지점, 날짜별, 딜러별 검색 및 필터링 <br>
- 필터링, 검색 : 시작 및 종료 날짜, 견적상태, 지점명, 딜러명 입력 받은 후 Q 객체를 사용하여 필터 조건에 따라 차량정보를 필터 및 검색하고 해당 차량정보들의 데이터 전송 구현 <br>
- 딜러 정보 확인 후 딜러 레벨에 따라 필터 조건 변동 <br>
5. 컨설팅 기록 <br>
- 차량 상세 페이지 내에 딜러 지정 및 견적 상태 변경, 상담내역 작성, 견적상태 변동 될 경우 고객에게 자동으로 알림 발송 <br>
- 딜러 정보 확인 후 딜러 레벨에 따라 수정 조건 변동 <br>
</p>

### API DOC
<a href="https://hyein-resume.notion.site/API-a6092a6daf9b449599b095698eb7cbc7">노션</a> 을 이용해 엔드포인트 정의 및 공유

## Frontend Repository
[프론트엔드 레포지토리 바로가기](https://github.com/DevSeulgi/selling-my-car)

<br/>

## Demo Video
* 전체 영상을 보려면 gif를 클릭해주세요👇
[![readme_sample3](https://user-images.githubusercontent.com/97112697/179683290-d65fb42d-3846-438b-9ba6-12df295fd973.gif)](https://youtu.be/)
