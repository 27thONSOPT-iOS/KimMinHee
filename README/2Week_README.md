# 🥨 2주차 과제 도전

## 01 ) AutoLayout, StackView, ScrollView 사용해보기 (Ver.WCB)
<img src=./2주차완성.gif width="200">

- 뷰 구성하기

    <img width="498" alt="2주차과제_캡쳐" src="https://user-images.githubusercontent.com/51286963/97662421-5d826d00-1aba-11eb-9dea-85762525051d.png">

1) Header - 글 작성하기 버튼
2) ScrollView
    - Banner
    - Stack : Horizontal 스택 4개를 1개의 Vertical 스택으로 구성
<br>

## 02 ) 💪🏻 도전 과제
 - Top 버튼으로 스크롤 하기 
1. 배너 이미지가 사라질 경우 TOP 버튼 보이기
    - 제일 처음 화면이 떴을 때 배너 이미지가 보이기 때문에 버튼 감추기
    ```swift 
    override func viewDidLoad() {
        super.viewDidLoad()
        topButton.isHidden = true
    }
    ```
    : [isHidden](https://developer.apple.com/documentation/uikit/uiview/1622585-ishidden) 이라는 Instance Property를 사용하면 특정 개체를 숨길지 설정할 수 있다(기본값은 false).

2. 스크롤해서 배너 이미지가 사라졌을 때 TOP 버튼 보여주기
    - 여기서는 [UIScrollViewDelegate](https://developer.apple.com/documentation/uikit/uiscrollviewdelegate)를 사용했다. 자주 사용하는 delegate를 호출해봤다.

    <img src=./UIScrollViewDelegate.gif width="400">

    ```swift
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // 사용자가 스크롤을 할 때 계속 호출
    }

    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        // 사용자가 스크롤을 시작 할 때 1번 호출
    }

    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        // 사용자가 화면에서 스크롤 제스쳐를 끝냈을 때 1번 호출 
    }

    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        // 스크롤 제스쳐가 화면에서 끝났을 때 1번 호출
    }

    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        // 화면 제일 위를 눌렀을 때 맨 위로 자동 스크롤을 허용할 지 여부
        return true // 허용
    }

    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        // 스크롤 속도가 느려질 때 호출
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // 스크롤 속도가 느려지면 호출
    }
    ```
    - 이 중 scrollViewDidScroll를 사용했다.
    ```swift
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if soptScrollView.contentOffset.y > bannerImage.frame.size.height {
            topButton.isHidden = false
        } else {
            topButton.isHidden = true
        }
    }
    ```
    : 배너 이미지 높이보다 스크롤 뷰의 y좌표가 내려올 때 topButton을 보여주고 숨겨주었다.

3. TOP 버튼 눌렀을 때 스크롤 위로 올리기
    ```swift
    @IBAction func topButtonDidTap(_ sender: UIButton) {
        soptScrollView.setContentOffset(CGPoint(x:0,y:0), animated: true)
    }
    ```
    : 버튼이 눌리면 스크롤 뷰의 위치를 다시 0,0으로 잡고 애니메이션 효과를 이용해 올라가게 만들어줬다.
