//
//  ViewController.swift
//  SimpleCallApp
//
//  Created by Mika Miyakawa on 2021/03/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeSignalButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func telTimeSignalButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "tel://117")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func telWhetherButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "tel://177")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func moveGoogleButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.google.com/")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func moveYahooButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.yahoo.co.jp/")!, options: [:], completionHandler: nil)
    }
}

