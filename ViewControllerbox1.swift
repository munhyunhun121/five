//
//  ViewControllerbox1.swift
//  five
//
//  Created by 문현권 on 2023/01/14.
//

import UIKit

class ViewControllerbox1: UIViewController {
    
    @IBOutlet weak var checkCo: UILabel!
    
    @IBOutlet weak var checkbox1: UIButton!
    
    @IBOutlet weak var checkbox2: UIButton!
    
    @IBOutlet weak var checkbox3: UIButton!
    
    
    var flag1 = false
    var flag2 = false
    var flag3 = false
    var checkedCount = 0
    
    @IBAction func checkboxbtn1(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        if (flag1 == false)
        {
            sender.setBackgroundImage((UIImage(named:"check")), for: UIControl.State.normal)
            flag1 = true
            defaults.set(true, forKey: "checkboxbtn1")
            checkedCount += 1
        }
        else
        {
            sender.setBackgroundImage((UIImage(named:"uncheck")), for: UIControl.State.normal)
            flag1 = false
            defaults.set(false, forKey: "checkboxbtn1")
            checkedCount -= 1
        }
        checkCo.text = "checked :\(checkedCount)"
        defaults.set(checkedCount, forKey: "checkedCount")
    }
    
    @IBAction func checkboxbtn2(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        if (flag2 == false)
        {
            sender.setBackgroundImage((UIImage(named:"check")), for: UIControl.State.normal)
            flag2 = true
            defaults.set(true, forKey: "checkboxbtn2")
            checkedCount += 1
        }
        else
        {
            sender.setBackgroundImage((UIImage(named:"uncheck")), for: UIControl.State.normal)
            flag2 = false
            defaults.set(false, forKey: "checkboxbtn2")
            checkedCount -= 1
        }
        checkCo.text = "checked :\(checkedCount)"
        defaults.set(checkedCount, forKey: "checkedCount")
    }
    
    
    @IBAction func checkboxbtn3(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        if (flag3 == false)
        {
            sender.setBackgroundImage((UIImage(named:"check")), for: UIControl.State.normal)
            flag3 = true
            defaults.set(true, forKey: "checkboxbtn3")
            checkedCount += 1
        }
        else
        {
            sender.setBackgroundImage((UIImage(named:"uncheck")), for: UIControl.State.normal)
            flag3 = false
            defaults.set(false, forKey: "checkboxbtn3")
            checkedCount -= 1
        }
        checkCo.text = "checked :\(checkedCount)"
        defaults.set(checkedCount, forKey: "checkedCount")
    }
    
    
    @IBOutlet weak var userstring: UILabel!
    var treeImage: UIImage?
    var treeChristmasImage: UIImage?
    
    @IBOutlet weak var textf: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var Label: UILabel!
    
    
    @IBOutlet weak var presentSwitch: UISwitch!
    @IBOutlet weak var presentStepper: UIStepper!
    
    let savedValue = "민"
    let p1 = "도봉기 010 4424 2334"
    let savedValue2 = "두일중학교"
    let savedValue3 = "봉일천"

    let p3 = "럭끼끼 010 4424 2334"


    let p2 = "이성계 101 1111 1111"
    let pppp = " 참회속죄는 이거야 "

    @IBAction func userbutton(_ sender: Any) {
        let userInput = textf.text!
        
        if userInput == savedValue {
            userstring.text = p1
        }
        else if userInput == savedValue2 {
            userstring.text = p2
        }
        else if userInput == savedValue3 {
            userstring.text = p3
        }

        else {
            userstring.text = "없는 대상처 입니다."
        }
    }
  
  
        
   
    
    

    @IBAction func presentSwitch(_ sender: UISwitch) {
        if sender.isOn {
                 imageView.image = treeChristmasImage
             } else {
                 imageView.image = treeImage
             }
    }
    
     
    @IBAction func presentStepper(_ sender: UIStepper) {
        Label.text = Int(sender.value).description
    }
    
    @IBAction func button(_ sender: Any) {
        var alertTitle = ""
                var alertMessage = ""
                if !(presentSwitch.isOn) {
                    alertTitle = "비밀이야"
                    alertMessage = "it is not christmas!"
                    let range = (alertTitle as NSString).range(of: "비밀이야")
                    let attributedString = NSMutableAttributedString(string: alertTitle)
                    attributedString.addAttribute(.foregroundColor, value: UIColor.red, range: range)
                    
                    let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                    alert.setValue(attributedString, forKey: "attributedTitle")
                    let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alert.addAction(action)
                    present(alert, animated: true, completion: nil)
                } else {
                    let numGifts = Int(presentStepper.value)
                    if numGifts == 1 {
                        let alertTitle = "한강포장[작동]\n신김포농협본점[작동]\n보성자동차 [작동]\n레인보우코리아[작동]\n\n 전체4개"
                        
                        let attributedString = NSMutableAttributedString(string: alertTitle)
                        var index = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index < alertTitle.count {
                            let ttt = (alertTitle as NSString).range(of: "[종합]", options: .caseInsensitive, range: NSRange(location: index, length: alertTitle.count - index))
                            if ttt.location == NSNotFound {
                                break
                            }
                            index = ttt.location + ttt.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: ttt)
                        }
                        
                        var index2 = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index2 < alertTitle.count {
                            let rrr = (alertTitle as NSString).range(of: "[작동]", options: .caseInsensitive, range: NSRange(location: index2, length: alertTitle.count - index2))
                            if rrr.location == NSNotFound {
                                break
                            }
                            index2 = rrr.location + rrr.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow, range: rrr)
                            
                        }
                        
                        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                        alert.setValue(attributedString, forKey: "attributedTitle")
                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: true, completion: nil)
                        
                    } else if numGifts == 2 {
                        alertTitle =
                        "윈테크코리아[작동]\n애즈랜드[종합]\n녹원씨엔아이[작동]\n신김포영농지점[작동]\n두일중학교[작동]\n운정중학교[종합]\n보광그랑베르[작동]\n삼영페이퍼[종합]\n신김포농협대곶지점[작동]\n장수빌딩[작동]\n탄현성당[작동]\nDK물류[작동]\n킨더스쿨[작동]\n한강시니어[작동]\n키즈플러스[작동]\n\n 전체 15개"
                   
                        
                       
                        
                        let attributedString = NSMutableAttributedString(string: alertTitle)        //range 종합 관련 att 빨간색 설정됨
                        var index = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index < alertTitle.count {
                            let ttt = (alertTitle as NSString).range(of: "[종합]", options: .caseInsensitive, range: NSRange(location: index, length: alertTitle.count - index))
                            if ttt.location == NSNotFound {
                                break
                            }
                            index = ttt.location + ttt.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: ttt)
                        }
                        
                        var index2 = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index2 < alertTitle.count {
                            let rrr = (alertTitle as NSString).range(of: "[작동]", options: .caseInsensitive, range: NSRange(location: index2, length: alertTitle.count - index2))
                            if rrr.location == NSNotFound {
                                break
                            }
                            index2 = rrr.location + rrr.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow, range: rrr)
                            
                        }
                        
                        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                        alert.setValue(attributedString, forKey: "attributedTitle")
                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: true, completion: nil)
                       
                    } else if numGifts == 3 {
                        alertTitle = "화이버택[작동]\n심학빌딩[종합]\n일야상사1[작동]\n유인빌딩[작동]\n행복한요양원[종합]\n애즈랜드디지털캠퍼스[작동]\n심학중학교[작동] \n동패유치원[작동]\n다율유치원[종합]\n\n 전체 9 개"
                        
                        let attributedString = NSMutableAttributedString(string: alertTitle)        //range 종합 관련 att 빨간색 설정됨
                        var index = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index < alertTitle.count {
                            let ttt = (alertTitle as NSString).range(of: "[종합]", options: .caseInsensitive, range: NSRange(location: index, length: alertTitle.count - index))
                            if ttt.location == NSNotFound {
                                break
                            }
                            index = ttt.location + ttt.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: ttt)
                        }
                        
                        var index2 = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index2 < alertTitle.count {
                            let rrr = (alertTitle as NSString).range(of: "[작동]", options: .caseInsensitive, range: NSRange(location: index2, length: alertTitle.count - index2))
                            if rrr.location == NSNotFound {
                                break
                            }
                            index2 = rrr.location + rrr.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow, range: rrr)
                            
                        }
                        
                        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                        alert.setValue(attributedString, forKey: "attributedTitle")
                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: true, completion: nil)
                    } else if numGifts == 4 {
                        alertTitle = "레드파이프[작동]\n 조일프린팅[작동]\n헬킨바이오[작동]\n이딸꼬레[작동]\n문촌4단지[종합]\n헤오름스퀘어[작동]\n새롬프라자[작동]\n\n 전체 7개"
                        
                        let attributedString = NSMutableAttributedString(string: alertTitle)        //range 종합 관련 att 빨간색 설정됨
                        var index = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index < alertTitle.count {
                            let ttt = (alertTitle as NSString).range(of: "[종합]", options: .caseInsensitive, range: NSRange(location: index, length: alertTitle.count - index))
                            if ttt.location == NSNotFound {
                                break
                            }
                            index = ttt.location + ttt.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: ttt)
                        }
                        
                        var index2 = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index2 < alertTitle.count {
                            let rrr = (alertTitle as NSString).range(of: "[작동]", options: .caseInsensitive, range: NSRange(location: index2, length: alertTitle.count - index2))
                            if rrr.location == NSNotFound {
                                break
                            }
                            index2 = rrr.location + rrr.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow, range: rrr)
                            
                        }
                        
                        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                        alert.setValue(attributedString, forKey: "attributedTitle")
                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: true, completion: nil)
                    } else if numGifts == 5 {
                        alertTitle = "M타워[종합]\n상상공간[종합]\n현대메디컬[종합]\n금화초등학교[종합]\n장성동부[작동]\n예솔유치원[종합]\n국가대표트레이닝센터[작동]\nM833[종합]\n대경종합건설[작동]\n코아스옹정리[작동]\n\n전체 10개"
                        
                        let attributedString = NSMutableAttributedString(string: alertTitle)        //range 종합 관련 att 빨간색 설정됨
                        var index = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index < alertTitle.count {
                            let ttt = (alertTitle as NSString).range(of: "[종합]", options: .caseInsensitive, range: NSRange(location: index, length: alertTitle.count - index))
                            if ttt.location == NSNotFound {
                                break
                            }
                            index = ttt.location + ttt.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: ttt)
                        }
                        
                        var index2 = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index2 < alertTitle.count {
                            let rrr = (alertTitle as NSString).range(of: "[작동]", options: .caseInsensitive, range: NSRange(location: index2, length: alertTitle.count - index2))
                            if rrr.location == NSNotFound {
                                break
                            }
                            index2 = rrr.location + rrr.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow, range: rrr)
                            
                        }
                        
                        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                        alert.setValue(attributedString, forKey: "attributedTitle")
                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: true, completion: nil)
                    } else if numGifts == 6 {
                        alertTitle = "한빛마을2단지상가[작동]\n운정초등학교[종합]\n민족화해센터[종합]\n광일중[종합]\n파주여고[종합]\n운정물순환[작동]\n제이씨현[종합]\n신김포농협양촌[작동]\n시조사[작동]\n천재상사[작동]\n금릉중학교[작동]\n\n전체 11개"
                        
                        let attributedString = NSMutableAttributedString(string: alertTitle)        //range 종합 관련 att 빨간색 설정됨
                        var index = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index < alertTitle.count {
                            let ttt = (alertTitle as NSString).range(of: "[종합]", options: .caseInsensitive, range: NSRange(location: index, length: alertTitle.count - index))
                            if ttt.location == NSNotFound {
                                break
                            }
                            index = ttt.location + ttt.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: ttt)
                        }
                        
                        var index2 = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index2 < alertTitle.count {
                            let rrr = (alertTitle as NSString).range(of: "[작동]", options: .caseInsensitive, range: NSRange(location: index2, length: alertTitle.count - index2))
                            if rrr.location == NSNotFound {
                                break
                            }
                            index2 = rrr.location + rrr.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow, range: rrr)
                            
                        }
                        
                        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                        alert.setValue(attributedString, forKey: "attributedTitle")
                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: true, completion: nil)
                    } else if numGifts == 7 {
                        alertTitle = "보배민속[작동]\n레인보우코리아[종합]\n신김포농협본점[종합]\n티엔테크[작동]\n\n 전체 4개"
                        
                        let attributedString = NSMutableAttributedString(string: alertTitle)        //range 종합 관련 att 빨간색 설정됨
                        var index = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index < alertTitle.count {
                            let ttt = (alertTitle as NSString).range(of: "[종합]", options: .caseInsensitive, range: NSRange(location: index, length: alertTitle.count - index))
                            if ttt.location == NSNotFound {
                                break
                            }
                            index = ttt.location + ttt.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: ttt)
                        }
                        
                        var index2 = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index2 < alertTitle.count {
                            let rrr = (alertTitle as NSString).range(of: "[작동]", options: .caseInsensitive, range: NSRange(location: index2, length: alertTitle.count - index2))
                            if rrr.location == NSNotFound {
                                break
                            }
                            index2 = rrr.location + rrr.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow, range: rrr)
                            
                        }
                        
                        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                        alert.setValue(attributedString, forKey: "attributedTitle")
                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: true, completion: nil)
                    } else if numGifts == 8 {
                        alertTitle = "김포한강시니어[종합]\n와이아이테크[작동]\n신김포대곶지점[종합]\n탄현성당[종합]\n두일중학교[종합]\n운정중학교[작동]\n장수빌딩[종합]\n보광그랑베르[종합]\nDK물류[종합]\n삼영페이퍼[작동]\n애즈랜드[작동]\n마법갤러리[작동]\n킨더스쿨[종합]\n일야상사2[작동]\n\n 전체 14개"
                        
                        let attributedString = NSMutableAttributedString(string: alertTitle)        //range 종합 관련 att 빨간색 설정됨
                        var index = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index < alertTitle.count {
                            let ttt = (alertTitle as NSString).range(of: "[종합]", options: .caseInsensitive, range: NSRange(location: index, length: alertTitle.count - index))
                            if ttt.location == NSNotFound {
                                break
                            }
                            index = ttt.location + ttt.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: ttt)
                        }
                        
                        var index2 = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index2 < alertTitle.count {
                            let rrr = (alertTitle as NSString).range(of: "[작동]", options: .caseInsensitive, range: NSRange(location: index2, length: alertTitle.count - index2))
                            if rrr.location == NSNotFound {
                                break
                            }
                            index2 = rrr.location + rrr.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow, range: rrr)
                            
                        }
                        
                        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                        alert.setValue(attributedString, forKey: "attributedTitle")
                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: true, completion: nil)
                    } else if numGifts == 9 {
                        alertTitle = "HS테크[작동]\n코아스김포[작동]\n신김포농협하성[작동]\n동화경모공원[작동]\n행복한요양원[작동]\n심학빌딩[작동]\n유인빌딩[종합]\n일야상사2[작동]\n심학중학교[종합]\n동패유치원[종합]\n다율유치원[작동]\n\n 전체 11개"
                        
                        let attributedString = NSMutableAttributedString(string: alertTitle)        //range 종합 관련 att 빨간색 설정됨
                        var index = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index < alertTitle.count {
                            let ttt = (alertTitle as NSString).range(of: "[종합]", options: .caseInsensitive, range: NSRange(location: index, length: alertTitle.count - index))
                            if ttt.location == NSNotFound {
                                break
                            }
                            index = ttt.location + ttt.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: ttt)
                        }
                        
                        var index2 = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index2 < alertTitle.count {
                            let rrr = (alertTitle as NSString).range(of: "[작동]", options: .caseInsensitive, range: NSRange(location: index2, length: alertTitle.count - index2))
                            if rrr.location == NSNotFound {
                                break
                            }
                            index2 = rrr.location + rrr.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow, range: rrr)
                            
                        }
                        
                        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                        alert.setValue(attributedString, forKey: "attributedTitle")
                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: true, completion: nil)
                    } else if numGifts == 10 {
                        alertTitle = "해오름스퀘어[종합]\n삼덕티엠피[작동]\n문촌4단지[작동]\n새롬프라자[종합]\n레드파이프[종합]\n원일분체[작동]\n\n전체 6개"
                        
                        let attributedString = NSMutableAttributedString(string: alertTitle)        //range 종합 관련 att 빨간색 설정됨
                        var index = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index < alertTitle.count {
                            let ttt = (alertTitle as NSString).range(of: "[종합]", options: .caseInsensitive, range: NSRange(location: index, length: alertTitle.count - index))
                            if ttt.location == NSNotFound {
                                break
                            }
                            index = ttt.location + ttt.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: ttt)
                        }
                        
                        var index2 = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index2 < alertTitle.count {
                            let rrr = (alertTitle as NSString).range(of: "[작동]", options: .caseInsensitive, range: NSRange(location: index2, length: alertTitle.count - index2))
                            if rrr.location == NSNotFound {
                                break
                            }
                            index2 = rrr.location + rrr.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow, range: rrr)
                            
                        }
                        
                        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                        alert.setValue(attributedString, forKey: "attributedTitle")
                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: true, completion: nil)
                    } else if numGifts == 11 {
                        alertTitle = "M타워[작동]\n싸운드로직[작동]\n현대메디컬[작동]\n금화초등학교[작동]\n더킥[작동]\n장성동부[종합]\n예솔유치원[작동]\n국가대표트레이닝[종합]\n대경종합건설[종합]\n상상공간[작동]\nM833[작동]\n\n 전체 11개"
                        
                        let attributedString = NSMutableAttributedString(string: alertTitle)        //range 종합 관련 att 빨간색 설정됨
                        var index = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index < alertTitle.count {
                            let ttt = (alertTitle as NSString).range(of: "[종합]", options: .caseInsensitive, range: NSRange(location: index, length: alertTitle.count - index))
                            if ttt.location == NSNotFound {
                                break
                            }
                            index = ttt.location + ttt.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: ttt)
                        }
                        
                        var index2 = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index2 < alertTitle.count {
                            let rrr = (alertTitle as NSString).range(of: "[작동]", options: .caseInsensitive, range: NSRange(location: index2, length: alertTitle.count - index2))
                            if rrr.location == NSNotFound {
                                break
                            }
                            index2 = rrr.location + rrr.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow, range: rrr)
                            
                        }
                        
                        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                        alert.setValue(attributedString, forKey: "attributedTitle")
                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: true, completion: nil)
                    } else if numGifts == 12 {
                        alertTitle = "천일문화사[작동]\n천재상사[종합]\n시조사[종합]\nGps[작동]\n신김포농협양촌[종합]\n금릉중학교[종합]\n운정초등학교[작동]\n민족화해센터[작동]\n광일중학교[작동]\n파주여고[작동]\n코업로지스[작동]\n운정물순환[종합]\n제이씨현[작동]\n\n전체 13개"
                        
                        let attributedString = NSMutableAttributedString(string: alertTitle)        //range 종합 관련 att 빨간색 설정됨
                        var index = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index < alertTitle.count {
                            let ttt = (alertTitle as NSString).range(of: "[종합]", options: .caseInsensitive, range: NSRange(location: index, length: alertTitle.count - index))
                            if ttt.location == NSNotFound {
                                break
                            }
                            index = ttt.location + ttt.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: ttt)
                        }
                        
                        var index2 = 0 //index는 계속 바뀌어서 변수로 설정되었네
                        while index2 < alertTitle.count {
                            let rrr = (alertTitle as NSString).range(of: "[작동]", options: .caseInsensitive, range: NSRange(location: index2, length: alertTitle.count - index2))
                            if rrr.location == NSNotFound {
                                break
                            }
                            index2 = rrr.location + rrr.length
                            attributedString.addAttribute(.foregroundColor, value: UIColor.systemYellow, range: rrr)
                            
                        }
                        
                        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                        alert.setValue(attributedString, forKey: "attributedTitle")
                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: true, completion: nil)
                    }
                    alertMessage = "SB"
                }
                
                let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        treeImage = UIImage(named: "tree.png") // 따옴표를 넣때문에
        // 실행이 안되었었음
              treeChristmasImage = UIImage(named: "treeChristmas.png")
              
              imageView.image = treeImage
        let defaults = UserDefaults.standard
           if let checked = defaults.value(forKey: "checkboxbtn1") as? Bool {
               if checked {
                   checkbox1.setBackgroundImage((UIImage(named:"check")), for: UIControl.State.normal)
                   flag1 = true
               } else {
                   checkbox1.setBackgroundImage((UIImage(named:"uncheck")), for: UIControl.State.normal)
                   flag1 = false
               }
           }
        if let checked = defaults.value(forKey: "checkboxbtn2") as? Bool {
            if checked {
                checkbox2.setBackgroundImage((UIImage(named:"check")), for: UIControl.State.normal)
                flag2 = true
            } else {
                checkbox2.setBackgroundImage((UIImage(named:"uncheck")), for: UIControl.State.normal)
                flag2 = false
            }
        }
        if let checked = defaults.value(forKey: "checkboxbtn3") as? Bool {
            if checked {
                checkbox3.setBackgroundImage((UIImage(named:"check")), for: UIControl.State.normal)
                flag3 = true
            } else {
                checkbox3.setBackgroundImage((UIImage(named:"uncheck")), for: UIControl.State.normal)
                flag3 = false
            }
        }
       
        let savedCheckedCount = defaults.integer(forKey: "checkedCount")
        checkCo.text = "checked :\(savedCheckedCount)"
       
       }
    
    
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


