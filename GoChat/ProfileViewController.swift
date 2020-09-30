//
//  ProfileViewController.swift
//  GoChat
//
//  Created by Павел on 19.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var avatarImageView: UIImageView!{
        didSet {
            avatarImageView.layer.cornerRadius = avatarImageView.bounds.width / 2
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(editButton.frame)
        self.setupAvatarTap()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(editButton.frame)
        // перед viewDidAppear срабатывает метод viewDidLayoutSubviews - размер view
        // измменяется под размер экрана текущего устройства, соответственно frame пересчитывается
        // (относительно view, загруженного в память)
    }
    
    @objc func avatarTapped(_ sender: UITapGestureRecognizer) {
        let alert = UIAlertController(title: "Установить аватар:", message: nil, preferredStyle:  .actionSheet)
        let galleryButton = UIAlertAction(title: "Выбрать из галереи", style: .default, handler: importLibraryImage)
        let fotoButton = UIAlertAction(title: "Сделать фото", style: .default, handler: importCameraImage(_:))
        let cancelButton = UIAlertAction(title: "Отмена", style: .cancel, handler: nil)
        
        alert.addAction(galleryButton)
        alert.addAction(fotoButton)
        alert.addAction(cancelButton)
        
        present(alert, animated: true, completion: nil)
    }
    
    func setupAvatarTap() {
        let avatarTap = UITapGestureRecognizer(target: self, action: #selector(self.avatarTapped(_:)))
        self.avatarImageView.isUserInteractionEnabled = true
        self.avatarImageView.addGestureRecognizer(avatarTap)
    }
    
    func importCameraImage (_ sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
            let image = UIImagePickerController()
            image.delegate = self
            image.sourceType = UIImagePickerController.SourceType.camera
            image.allowsEditing = false
            self.present(image, animated: true, completion: nil)
        }
    }
    
    func importLibraryImage (_ sender: AnyObject) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        image.allowsEditing = false
        self.present(image, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            avatarImageView.contentMode = .scaleToFill
            avatarImageView.image = image
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
}


