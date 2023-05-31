//
//  LogInView.swift
//  wonShot
//
//  Created by nayeon  on 2023/05/02.
//

import UIKit

class LogInView: UIViewController, UITextFieldDelegate {
    
    var userModel = UserModel() // 인스턴스 생성

    // MARK: - IBOutlet
    @IBOutlet weak var idTF: UITextField!
    @IBOutlet weak var passwdTF: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var joinBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        idTF.underlined()
        passwdTF.underlined() 
    }

    // MARK: - Objc Function
    @IBAction func logInBtn(_ sender: UIButton) {
        print("로그인 클릭됨")
        
        print("login success")//로그인 유효성 검사
        //callback에 따른 UI변환 
        let storyboard: UIStoryboard = UIStoryboard(name: "HomePage", bundle: nil)
        if let tabBarVC = storyboard.instantiateInitialViewController() as? TabarController  {
            tabBarVC.modalPresentationStyle = .fullScreen
            self.present(tabBarVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        guard let signupVC = self.storyboard?.instantiateViewController(identifier: "SignUpView") as? SignUpView else { return }
        self.navigationController?.pushViewController(signupVC, animated: true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
