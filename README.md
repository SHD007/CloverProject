


# 프로젝트명 : Clover (가족 찾기 QR Service)  
> 개요 : 
자신의 소중한 가족(치매노인, 반려동물, 아동)을 잃어 버렸을 때 개인정보를 담은 QR을 인식표로 만들어서, 개인이 직접 다운받을 수 있게 만들었습니다. 그리고 이 QR을 사용해 가족을 찾아주고, 찾는 서비스를 구현해보았습니다.

# 본인 파트 : 
* Zxing Qr open api를 이용한 MVC패턴 QR 생성기구현 
* Mybatis를 이용한 ORM 객체 관계형 데이터 베이스 Mapping으로 사용자가 Qr에 입력한 정보를 데이터베이스에 간단하게 저장 구현
* Request Mapping을 이용한 URL에 따른 handler를 찾아 Qr정보입력, 수정 다운로드가 자유롭게 가능하게 구현 
* Spring Validation을 이용한 Parameter Validation으로 필수정보입력 검증 구현
* 전체 스키마 구성
* QR파트 프론트 javascript, jquery 구성

# 기획의도
![image](https://user-images.githubusercontent.com/90361160/154867546-8cac43e8-982e-48ba-b856-53dfe2ab5b15.png)
점차 늘어나는 치매 걸리신 부모님, 국가 미래인 어린 아이들, 이제는 가족이라 말할 수있는 반려동물들... 우리의 소중한 가족들이 실종되도 바로 찾을 수 있게 누구나 만들 수 있는 
Qr 생성기 플랫폼을 만들었습니다.

# 플로우 차트
![image](https://user-images.githubusercontent.com/90361160/154936144-e3477830-597d-4bf0-868f-271199f7f531.png)


# ERD
![image](https://user-images.githubusercontent.com/90361160/154867848-160f2b1c-1b92-47a7-bd4f-52d95c49a039.png)


## 사용 기술 및 라이브러리 :
HTML, CSS, JavaScript, jQuery, JSON, Ajax, BootStrap4.0,  Java, Spring4, Spring Boot, Suite(STS4), Spring Security, Maven, JSTL,  JDBC, My SQL, lombok, Zxing library

##  Clover 서비스 소개 


### 1. 메인페이지
> 먼저 로그인을 합니다. 

![1](https://user-images.githubusercontent.com/90361160/150639712-4e867405-e1bd-420f-96cf-ad32c6cc3442.png)

### 2. QR 정보입력
> 자신의 가족(치매노인, 반려동물, 아이)에 대한 정보를 입력합니다.

![2](https://user-images.githubusercontent.com/90361160/150640076-3d52b10b-f0f0-4299-9021-09d03bb718a1.png)


### 3. QR 생성
> QR 생성후 다운로드가 가능하며 수정과 수정후에도 다운로드가 가능, 주문하기 누르면 Qr 뱃지 주문이 가능합니다.

![3](https://user-images.githubusercontent.com/90361160/150640099-9d3417f5-9c28-4f6e-8b7e-5a438fb93fcb.png)

### 4. QR 스캔
> 자신의 가족에게 해당 qr 뱃지를 달고 다른 사람들이 내 가족을 찾아 qr을 스캔하면(네이버 qt 스캔 추천) 2번에서 입력한 정보를 확인 할 수 있습니다.

![KakaoTalk_20220126_135317643_01](https://user-images.githubusercontent.com/90361160/151111877-e46f4609-549c-47a2-a9ef-9c75c818b686.jpg)
![KakaoTalk_20220126_135317643](https://user-images.githubusercontent.com/90361160/151112275-c4986ccb-161a-46a7-9fd9-750610cbc898.jpg)



### 5. 가족 찾기 게시판
> 내 가족이 실종이 되면 해당 게시판에 잃어 버린 장소와 qr, 기타 다른 정보를 입력해 실종신고를 할 수 있으면 다른 사름은 실종자 발견 신고를 해당 게시물 댓글에 지도로 표시하면서 신고 할 수 있습니다

![5](https://user-images.githubusercontent.com/90361160/150640124-4017e49f-5b4b-4b58-b20f-63488e58ff44.png)
