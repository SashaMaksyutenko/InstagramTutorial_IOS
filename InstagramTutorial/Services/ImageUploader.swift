//
//  ImageUploader.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 14.07.2023.
//
import UIKit
import Firebase
import Foundation
import FirebaseStorage
struct ImageUploader{
    static func uploadImage(image:UIImage) async throws->String?{
        guard let imageData=image.jpegData(compressionQuality: 0.5) else {return nil}
        let fileName=NSUUID().uuidString
        let ref=Storage.storage().reference(withPath: "/profile_images/\(fileName)")
        do{
            let _ = try await ref.putDataAsync(imageData)
            let url=try await ref.downloadURL()
            return url.absoluteString
        }
        catch{
            print("Failed to Upload image with error: \(error.localizedDescription)")
            return nil
        }
    }
}
