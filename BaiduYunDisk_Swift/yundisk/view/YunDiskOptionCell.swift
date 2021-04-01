//
//  YunDiskOptionCell.swift
//  BaiduYunDisk_Swift
//
//  Created by 刘小兵 on 2017/9/20.
//  Copyright © 2017年 刘小兵. All rights reserved.
//

import UIKit
import SnapKit

class YunDiskOptionCell: BaseTabViewCell {
    
    
    lazy var btnSort : UIButton = UIButton()
    lazy var btnNewDirectory : UIButton = UIButton()
    lazy var btnSearch : UIButton = UIButton()
    
    override func initItemView() {
        
        
        
        btnSort.setImage(UIImage.init(named: "main_list_header_rank_normal"), for: UIControl.State.normal)
        btnSort.setImage(UIImage.init(named: "main_list_header_rank_pressed"), for: UIControl.State.highlighted)
        btnSort.addTarget(self, action: #selector(onClick(sender:)), for:.touchUpInside)
        btnSort.tag = 21
        
        btnSort.contentMode = UIView.ContentMode.scaleToFill
        btnSort.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center;
        self.addSubview(btnSort)
        btnSort.snp.makeConstraints({(make) in
            
            make.left.equalToSuperview()
            make.size.equalTo(CGSize.init(width: UIScreen.main.bounds.size.width / 3, height: self.frame.size.height))
            make.centerY.equalToSuperview()
            
        })
        
        
        btnNewDirectory.setImage(UIImage.init(named: "main_list_header_create_folder_normal"), for: UIControl.State.normal)
        btnNewDirectory.tag = 22
        btnNewDirectory.setImage(UIImage.init(named: "main_list_header_create_folder_pressed"), for: UIControl.State.highlighted)
        btnNewDirectory.addTarget(self, action: #selector(onClick(sender:)), for:.touchUpInside)
        btnNewDirectory.contentMode = UIView.ContentMode.scaleToFill
        btnNewDirectory.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center;
        self.addSubview(btnNewDirectory)
        btnNewDirectory.snp.makeConstraints({(make) in
            
            
            make.left.equalTo(btnSort.snp.right)
            make.size.equalTo(CGSize.init(width: UIScreen.main.bounds.size.width / 3, height: self.frame.size.height))
            make.centerY.equalToSuperview()
            
        })
        
        
        
        btnSearch.setImage(UIImage.init(named: "main_list_header_search_normal"), for: UIControl.State.normal)
        btnSearch.tag = 23
        btnSearch.setImage(UIImage.init(named: "main_list_header_search_pressed"), for: UIControl.State.highlighted)
        btnSearch.addTarget(self, action: #selector(onClick(sender:)), for:.touchUpInside)
        btnSearch.contentMode = UIView.ContentMode.scaleToFill
        btnSearch.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center;
        self.addSubview(btnSearch)
        btnSearch.snp.makeConstraints({(make) in
            
            make.left.equalTo(btnNewDirectory.snp.right)
            make.size.equalTo(CGSize.init(width: UIScreen.main.bounds.size.width / 3, height: self.frame.size.height))
            make.centerY.equalToSuperview()
            
        })
        
    }
    
    override func bindData(data: BaseModel) {
        
    }
    
    @objc func onClick(sender:UIButton?){
    
        
        print("78-----------\(sender?.tag)")
    }
}


