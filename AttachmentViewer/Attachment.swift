//
//  Attachment.swift
//  KousakuViewer
//
//  Created by shima jinsei on 2017/01/06.
//  Copyright © 2017年 Jinsei Shima. All rights reserved.
//

import Foundation

struct Attachment {

    let id: String
    let url: String
    let thumbnail_url: String
    let size: String
    let content_type: String
    let views_count: String
    let created_at: String

    init(id: String, url: String, thumbnail_url: String, size: String, content_type: String, views_count: String, created_at: String) {
        
        self.id = id
        self.url = url
        self.thumbnail_url = thumbnail_url
        self.size = size
        self.content_type = content_type
        self.views_count = views_count
        self.created_at = created_at
    }
}
