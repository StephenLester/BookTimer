//
//  BookTimerViewController.swift
//  BookCalculator
//
//  Created by Steve Lester on 1/3/18.
//  Copyright © 2018 Steve Lester. All rights reserved.
//

import UIKit


class BookTimerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var page: [String] = []
    var timer = Timer()
    var minutes: Int = 0
    var seconds: Int = 0
    var fractionOfSeconds: Int = 0
    
    var stopWatchString: String = ""
    var startStopWatch: Bool = true
    var addPageRead: Bool = false
    
    var avePageTime: Int = 0
    var totalTime: Int = 0
    
    // MARK: - StopWatchLabel
    var titleLabel = UILabel()
    var EnterPageAmountLabel = UILabel()
    var stopWatchLabel = UILabel()
    var aveTimeToReadLabel = UILabel()
    var aveReadingTimeLabel = UILabel()
    var EstimatedTimeToFinnishLabel = UILabel()
    var totalTimeToFinnishLabel = UILabel()
    
    // MARK: - TEXTFIELD
    var pageAmountTextField = UITextField()
    
    // MARK: - TableView
    var pageReadTimeTableView: UITableView  =   UITableView()
    
    // MARK: - Buttons
    var startStopButton = UIButton()
    var pageSaveButton = UIButton()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
//        FixME   table view location
        pageReadTimeTableView.frame = CGRect(x: <#T##Int#>, y: <#T##Int#>, width: <#T##Int#>, height: <#T##Int#>)
        pageReadTimeTableView.delegate = self
        pageReadTimeTableView.dataSource = self
        pageReadTimeTableView.register(UITableViewCell.self, forCellReuseIdentifier: "pageCell")
        self.view.addSubview(pageReadTimeTableView)

        
        // BUTTONS
        setupButtons()
        constrainButtons()
        startStopButtonPressed()
        pageSaveButtonPressed()
        
        // LABELS
        titleLabel.text = "Book Timer"
        EnterPageAmountLabel.text = "Enter total pages of your book."
        stopWatchLabel.text = "00:00.00"
        aveTimeToReadLabel.text =
        
        
        // TEXTFIELD
        pageAmountTextField.placeholder = "Enter totel page count"
        
    }
    
     func setupButtons() {
        startStopButton.addTarget(self, action: #selector(startStopButtonPressed), for: .touchUpInside)
        pageSaveButton.addTarget(self, action: #selector(pageSaveButtonPressed), for: .touchUpInside)
    
        
    }
    
     func constrainButtons() {
        
        
    }
    
    @objc func startStopButtonPressed() {
        if startStopWatch == true {
            
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateStopWatch), userInfo: nil, repeats: true)
            
            
            startStopWatch = false
            
            
            // MARK: -  Get or Make the Image Button Icons
            
            startStopButton.setImage(UIImage(named: "Stop.png"), for: UIControlState.normal)
            // This was the lap button now Page button
            pageSaveButton.setImage(UIImage(named: "Page.png"), for: UIControlState.normal)
            
            addPageRead = true
            
        } else {
            
            timer.invalidate()
            startStopWatch = true
            
            startStopButton.setImage(UIImage(named: "Start.png"), for: UIControlState.normal)
            // This was the reset button now the save button
            pageSaveButton.setImage(UIImage(named: "Save.png"), for: UIControlState.normal)
            
            addPageRead = false
            
        }
    }
        
         @objc func pageSaveButtonPressed() {
            if addPageRead == true {
                
                page.insert(stopWatchString, at: 0)
                pageReadTimeTableView.reloadData()
                
            } else {
                addPageRead = false
                
                // this resets the time but i need it to Pop back to the Detail View Controller
                pageSaveButton.setImage(UIImage(named: "Page.png"), for: .normal)
                
                page.removeAll(keepingCapacity: false)
                pageReadTimeTableView.reloadData()
                fractionOfSeconds = 0
                seconds = 0
                minutes = 0
                
                
                stopWatchString = "00:00.00"
                stopWatchLabel.text = stopWatchString
                
            }
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return page.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "pageCell")
        cell.backgroundColor = self.view.backgroundColor
        cell.textLabel?.text = "Page \(page.count-indexPath.row)"
        cell.detailTextLabel?.text = page[indexPath.row]
        return cell
    }
    
    
    @objc func updateStopWatch() {
        fractionOfSeconds += 1
        if fractionOfSeconds == 100 {
            seconds += 1
            fractionOfSeconds = 0
        }
        if seconds == 60 {
            minutes += 1
            seconds = 0
        }
        let fractionsString = fractionOfSeconds > 9 ? "\(fractionOfSeconds)" : "0\(fractionOfSeconds)"
        let secondsString = seconds > 9 ? "\(seconds)" : "0\(seconds)"
        let minutesString = minutes > 9 ? "\(minutes)" : "0\(minutes)"
        
        stopWatchString = "\(minutesString):\(secondsString):\(fractionsString)"
        stopWatchLabel.text = stopWatchString
    }
        
    }
    

