//
//  ViewController.swift
//  Carthage_Rxswift
//
//  Created by naoya hanai on 2018/09/22.
//  Copyright © 2018年 naoya hanai. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet weak private var button: UIButton!
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.rx.tap
            .subscribe({ _ in
                // do something
            })
            .disposed(by: disposeBag)
    }
}

