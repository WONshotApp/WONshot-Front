//
//  CompleteView.swift
//  wonShot
//
//  Created by nayeon  on 2023/05/30.
//

import UIKit
import Foundation


class CompleteView: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
          // 5초 후 실행될 부분
         print("success")//로그인 유효성 검사
            //callback에 따른 UI변환
            let storyboard: UIStoryboard = UIStoryboard(name: "HomePage", bundle: nil)
            if let tabBarVC = storyboard.instantiateInitialViewController() as? TabarController  {
                tabBarVC.modalPresentationStyle = .fullScreen
                self.present(tabBarVC, animated: true, completion: nil)
            }
        }
    }
    // 화면터치시 화면 이동
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let storyboard: UIStoryboard = UIStoryboard(name: "HomePage", bundle: nil)
        if let tabBarVC = storyboard.instantiateInitialViewController() as? TabarController  {
            tabBarVC.modalPresentationStyle = .fullScreen
            self.present(tabBarVC, animated: true, completion: nil)
        }

    }
    

}
