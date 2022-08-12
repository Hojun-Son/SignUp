//
//  SecondViewController.swift
//  SignUp
//
//  Created by ABLY on 2022/08/12.
//

import UIKit

class SecondViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    lazy var imagePicker: UIImagePickerController = {
        let picker: UIImagePickerController = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        return picker
    }()
    @IBOutlet weak var imageView: UIImageView!
//    @IBAction func touchUpSelectImage(_ sender: UIImageView) {
//        self.present(self.imagePicker,animated: true, completion: nil)
//    }
    @IBOutlet weak var idFeild: UITextField!
    @IBOutlet weak var passwordFeild: UITextField!
    @IBOutlet weak var passwordCheckFeild: UITextField!
    @IBOutlet weak var nextButton: UIButton!
   
    @IBAction func touchUpNextButton(_ sender: UIButton) {
        UserInformation.shared.id = idFeild.text
        UserInformation.shared.password = passwordFeild.text
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        self.present(self.imagePicker,animated: true,completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        nextButton.isEnabled = false
        
        //gestureRecognizer로 이미지뷰 설정
        let tapImageViewRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(tapImageViewRecognizer)
        
    }
    @IBAction func popToFirst() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let originalImage: UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{self.imageView.image = originalImage}
        self.dismiss(animated: true, completion: nil)
    }
    func textFieldDidEndEditing(_ textField: UITextField){
        if idFeild
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
