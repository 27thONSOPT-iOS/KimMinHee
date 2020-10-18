# 🐶 1주차 과제 도전

## 01 ) Present, Push, Pop 사용해보기
  <img width="600" alt="View" src="https://user-images.githubusercontent.com/51286963/95858168-9e2e7680-0d97-11eb-8c68-a9ac7b4746cb.png">

1) MainViewController -> LoginViewController : Present
2) LoginViewController -> MainViewController : Dismiss
3) LoginViewController -> SignViewController : Navigation - Push
4) SignViewController -> LoginViewController : Navigation - Pop
<br>

## 02 ) 💪🏻 도전 과제
 - LoginViewController에서 MainViewController로 값 전달하기

    ``` swift
    @IBAction func LoginDidTab(_ sender: UIButton) {
        // "로그인" 버튼 클릭 시 event

        if let mainView = self.presentingViewController as? MainViewController {
            mainView.part = self.partTextField.text
            mainView.name = self.nameTextField.text
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    ```

    : presentingViewController은 자신을 호출한 ViewController를 의미한다. 나를 호출한 뷰를 선언해주고 값을 전달한다.

    
    🔍  왜 instantiateViewControllerf를 사용하지 않았는지 궁금하다면?  [Click❗️](https://minnit-develop.tistory.com/8#comment15299902)
<br>
<br>

- MainViewController로 LoginViewController의 값 받아오기
    ``` swift
    override func viewWillAppear(_ animated: Bool) {

        if let sendPart = self.part,
           let sendName = self.name {
            self.partLabel.text = sendPart
            self.nameLabel.text = "\(sendName)님 안녕하세요~~☺️"
        }
    }
    ```
    : viewDidLoad() 가 아닌 viewWillAppear() 에서 값을 받아오는 이유는 생명주기 때문이다. viewDidLoad는 이미 처음 앱을 실행했을 때 1회만 호출되기 때문에 LoginView를 다녀오면 다시 호출되지 않는다. 하지만 viewWillAppear는 화면이 표시될 때 마다 호출되기 때문에 값을 받아오기에 적합하다. 



- <br>
  <img width="300" alt="결과물" src="https://user-images.githubusercontent.com/51286963/95859376-7c35f380-0d99-11eb-8e2d-4d64f7e3df06.gif">
