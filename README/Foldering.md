# 🔍 Project Foldering 

- Project
    - Surpporting File
    - Source
      - ViewController
      - Cell
      - View
      - Extensions
      - Model
      - Service
    - Resource
      - Assets
      - StoryBoards
    
<br>

### 🍎 Surpporting File
: 기본 파일 중 프로젝트 설정에 도움이 되는 파일로 구성<br>
###### ->  AppDelegate.swift, SceneDelegate.swift, info.plist
<br>

### 🍎 Source
- #### 🍏 ViewController
  : ViewController 전용 폴더

- #### 🍏 Cell
  : CollectionView, TableView 등에서 각 Cell에 적용할 Cell 파일

- #### 🍏 Controller
  : 뷰컨을 제외한 컨트롤러
  ###### ->  ex)MainNC.swift, MainTBC.swift

- #### 🍏 Extensions
  : 자주 쓰는 폰트, color들을 확장으로 선언해서 단순 선언을 통해 사용하기 편하게 만들어주는 파일들로 구성   <br>
  ###### ->  ex) UIColor+Extension.swift

- #### 🍏 Model
  : 구조체(Struct) 파일, 이 파일들은 주로 서버에서 값을 받아올 때 사용
  ###### ->  ex) SignupData.swift

- #### 🍏 Service
  : Service 폴더는 주로 서버와 연동하기 위해 사용되는 파일들로 구성
  ###### ->  ex) APIConstants.swift, NetworkResult.swift, LoginService.swift


<br>

### 🍎 Resource
- #### 🍏 Assets
  : 에셋 카탈로그 (애플리케이션에 사용될 다양한 에셋을 관리하면서, 에셋과 다양한 디바이스의 속성에 대한 파일의 맵핑을 통해 어플리케이션 리소스에 접근할 수 있도록 도와주는 역할)
- #### 🍏 StoryBoards
  : StoryBoard의 모임
  ###### ->  ex) LaunchScreen.storyboard, Main.storyboard
