//
//  UploadPostViewModel.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 12.07.2023.
//

import Foundation
import PhotosUI
import SwiftUI
@MainActor
class UploadPostViewModel:ObservableObject{
    @Published var selectedImage:PhotosPickerItem?{
        didSet{ Task {await loadImage(fromItem: selectedImage)}}
    }
    @Published var postImage:Image?
    @Published private var fullname=""
    @Published private var bio=""
    func loadImage(fromItem item:PhotosPickerItem?)async{
        guard let item=item else {return}
        guard let data=try?await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage=UIImage(data:data) else {return}
        self.postImage=Image(uiImage:uiImage)
    }
}
