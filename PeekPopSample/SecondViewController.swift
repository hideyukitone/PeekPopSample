//
//  SecondViewController.swift
//  PeekPopSample
//
//  Created by 大國嗣元 on 2017/12/12.
//  Copyright © 2017年 hideyuki okuni. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let label: UILabel

    init(indexPath: IndexPath) {
        label = UILabel()

        super.init(nibName: nil, bundle: nil)

        label.text = "\(indexPath.row)行目"
        label.textAlignment = .center
        self.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.view.backgroundColor = .white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var previewActionItems: [UIPreviewActionItem] {
        let edit = UIPreviewAction(title: "編集", style: .default) { _, _ in
            print("編集をタップ")
        }

        let delete = UIPreviewAction(title: "削除", style: .destructive) { _, _ in
            print("削除をタップ")
        }

        return [edit, delete]
    }
}
