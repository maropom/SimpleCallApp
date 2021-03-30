//
//  ViewController.swift
//  SimpleCallApp
//
//  Created by Mika Miyakawa on 2021/03/25.
//

import UIKit
import Alamofire
import Kanna

class ViewController: UIViewController {

    @IBOutlet weak var timeSignalButton: UIButton!
    @IBOutlet weak var whetherLabel: UILabel!
    @IBOutlet weak var todayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getTodayWhether()
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
    
    func getTodayWhether() {
    //スクレイピング対象のサイトを指定
        AF.request("https://weather.yahoo.co.jp/weather/jp/13/4410.html").responseString { response in
            switch response.result {
            case let .success(value):
                if let doc = try? HTML(html: value, encoding: .utf8) {
                    
                    // 今日の日付をXpathで指定
                    var sizes = [String]()
                    let today = doc.xpath("//p[@class='date']").first?.text
                    self.todayLabel.text = today
                    print(today)
                    
                    //天気をXpathで指定
                    var todayWhether = doc.xpath("//p[@class='pict']").first?.text
                    self.whetherLabel.text = todayWhether
                    print(todayWhether)
                }
            case let .failure(error):
                print(error)
            }
        }
    }
}

