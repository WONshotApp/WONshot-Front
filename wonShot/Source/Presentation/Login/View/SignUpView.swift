//
//  SignUpView.swift
//  wonShot
//
//  Created by nayeon  on 2023/05/30.
//

import UIKit

class SignUpView: UIViewController, UITextFieldDelegate {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var IDtextField: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var passwordCheckTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        nameTF.underlined()
        passwordTF.underlined()
        emailTF.underlined()
        passwordCheckTF.underlined()
        IDtextField.underlined()
    }
    
    
    // MARK: - Objc Function
    
    
    @IBAction func completeAction(_ sender: Any) {
        print("완료 클릭됨")
        
        print("signup success")//로그인 유효성 검사
        //callback에 따른 UI변환
//        let storyboard: UIStoryboard = UIStoryboard(name: "HomePage", bundle: nil)
//        guard let svc1 = self.storyboard?.instantiateViewController(identifier: "ModalPersonalViewController") as? ModalPersonalViewController else { return }
        guard let completeVC = self.storyboard?.instantiateViewController(identifier: "CompleteView") as? CompleteView else { return }
//        guard let completeVC = self.instantiateInitialViewController() as? CompleteView {
            completeVC.modalPresentationStyle = .fullScreen
            self.present(completeVC, animated: true, completion: nil)
//        }

    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
