# hangorithm
![image]()
<p align="center">
    <img src="https://github.com/rddckdeo/hangorithm/assets/150643230/19574423-19f6-4362-9156-c97d002a649f" width="700">
</p> <br/>
# 홈페이지 사진
<div align="center">
    <img src="https://github.com/rddckdeo/hangorithm/assets/150643230/2fdb55cc-758e-473e-9868-a0a685085d2a" width="600">
    <img src="https://github.com/rddckdeo/hangorithm/assets/150643230/776144ec-23e7-477a-b3a0-72bbacc4bbad" width="600">
    <img src="https://github.com/rddckdeo/hangorithm/assets/150643230/a3d8cd64-7e9a-4c96-8014-bd047af04594" width="600">
    <img src="https://github.com/rddckdeo/hangorithm/assets/150643230/2a108bd5-664a-4a72-b0c2-3603873bab39" width="600">
    <img src="https://github.com/rddckdeo/hangorithm/assets/150643230/d108e8ba-c437-4106-b18e-c8c02f7892f3" width="600">
    <img src="https://github.com/rddckdeo/hangorithm/assets/150643230/dca0b50f-a4d7-403f-a78f-f5aee89a1e04" width="600">
    <img src="https://github.com/rddckdeo/hangorithm/assets/150643230/c64747fd-d4e3-497d-a77e-0720d2fc22cc" width="600">

</div>

## 프로젝트 소개
**프로젝트 팀명 | Hangorithm
<br/>
프로젝트 인원 | 1명
<br/>
홈페이지 한줄 설명 | <br/>
프로젝트 한고리즘은 기존 국비지원 학원에서 배웠던 내용을 다시금 이해하고  웹 사이트에 필요한 기능을 혼자서 구현하기 위한 개인 프로젝트입니다.**
## 구현된 기능 소개
- 주요 기능 |
   - 로그인, 회원가입, 비밀번호 찾기, 비밀번호 암호화, 아이디 찾기
- 메인 페이지에서 나의 정보, 각 게시판 확인 가능
- 단일 페이지에서 각 status별 List확인 ( 게시글 공지사항, 문의사항, 기술지원 )
    - 각 게시판 별 게시글 작성, 게시글 상세 보기 기능
- 메인페이지에서 검색 단어가 포함된 게시글 제목 검색 기능
    - 더보기 기능을 통해 게시글 제한 수
- My Page를 통해 나의 정보, 나의 회사, 내가 작성한 게시글 정보 확인 가능
    - 나의 정보 수정 가능 ( 아이디 및 생성 날짜 제외 )
- JSTL을 통해 로그인을 해야만 가능한 기능 제한 ( 메인 페이지의 Content 및 게시글 작성, My Page 등 )
- 검색 기능 추가 및 검색된 List에 더보기를 통해 보여지는 게시글 수를 증가하는 기능 추가

- ## Main Page
### Main Page에서 각 기능을 사용할 수 있는 다른 페이지로 이동시키는 태그들이 주로 있으며, 빠른 컨텐츠 이용을 위한 Main Content 영역이 있습니다.
### 1.빠른 컨텐츠 이용
<p align="center">
    <img src="https://github.com/rddckdeo/hangorithm/assets/150643230/d3afd97f-6fef-4634-8431-dde74462b0c7" width="400" height="500">
</p> <br/>
- 로그인을 하지 않았을 경우에는 해당 컨텐츠를 이용할 수 없기에 로그인이 필요하다는 문구를 띄운 후 로그인으로 바로 이동할 수 있는 태그를 배치하였습니다.



- ## 로그인, 회원가입
### 로그인 기능
### 1. 로그인, 로그아웃 기능 구현 <br/>
<p align="center">
    <img src="" width="400" height="500">
</p> <br/>


### 2. 
<div align="center">
<img src="" width ="300" height="200">
<img src="" width ="300" height="200">
</div>
설명 추가


### 회원 가입
### 1. 아이디, 닉네임 중복체크 기능
![image]() <br/>
회원가입을 하기 전 ID 또는 닉네임이 중복되면 안되기에 버튼을 click하여 데이터베이스에 일치하는 값이 있는지 확인을 합니다.
- 일차하는 값이 있을 경우 "이미 (아이디가, 닉네임이) 있습니다." 표시
- 일치하는 값이 없을 경우 "사용 가능한 (아이디, 닉네임)입니다." 표시

### 2. 비밀번호 암호화
- 스프링 시큐리티에서 제공하는 bcryptpasswordencoder를 사용하여 비밀번호 암호화 사용
<img src="" width ="500" height="150"> <br/>
- 로그인을 할 때도 bcryptpasswordencoder에 포함된 match 기능을 사용하여 입력한 비밀번호와 암호화된 비밀번호가 일치한지 여부를 확인

### 3. 비밀번호 일치 여부 확인
![image]() <br/>
입력한 비밀번호와 비밀번호 재확인에 입력된 값을 비교하여 해당 값이 일치한지 표시
- 일치하는 경우 "비밀번호가 일치합니다" 표시
- 일치하지 않을 경우 "비밀번호가 일치하지 않습니다." 표시

## 프로젝트 후기
- 
