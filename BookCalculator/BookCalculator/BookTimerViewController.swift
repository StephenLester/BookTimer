//
//  BookTimerViewController.swift
//  BookCalculator
//
//  Created by Steve Lester on 1/3/18.
//  Copyright © 2018 Steve Lester. All rights reserved.
//

import UIKit


class BookTimerViewController: UIViewController /*, UITableViewDelegate, UITableViewDataSource*/ {
    
//    var page: [String] = []
//    var timer = Timer()
//    var minutes: Int = 0
//    var seconds: Int = 0
//    var fractionOfSeconds: Int = 0
//
//    var stopWatchString: String = ""
//    var startStopWatch: Bool = true
//    var addPageRead: Bool = false
//
//    var avePageTime: Int = 0
//    var totalTime: Int = 0
    
    // MARK: - Labels
    var enterPageAmountLabel = UILabel()
    var stopWatchLabel = UILabel()
    var yourAveTimeToReadLabel = UILabel()
    var aveReadingTimeLabel = UILabel()
    var estimatedTimeToFinnishLabel = UILabel()
    var totalTimeToFinnishLabel = UILabel()
//
//    // MARK: - TEXTFIELD
    var pageAmountTextField = UITextField()
//
//    // MARK: - TableView
    var pageReadTimeTableView = UITableView()
//
//    // MARK: - Buttons
    let pageSaveButton = UIButton(type: .custom)
    let startStopButton = UIButton(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Book Timer"
        
        setupLabelsAndTextFields()
        setupTableView()
        setupButtons()
//        startStopButtonPressed()
//        pageSaveButtonPressed()
        constrainLabelsAndTextFields()
        
        
   
//        FixME   table view location
        
//        pageReadTimeTableView.delegate = self
//        pageReadTimeTableView.dataSource = self
//        pageReadTimeTableView.register(UITableViewCell.self, forCellReuseIdentifier: "pageCell")
//        self.view.addSubview(pageReadTimeTableView)

        



//        saveTimeToReadLabel.text =
        
        

        
    }
    
    func setupLabelsAndTextFields() {
        
        // enterPageAmountLabel
        enterPageAmountLabel.text = "Please enter total pages in book:"
        pageAmountTextField.placeholder = "Page count"
        stopWatchLabel.text = "00:00.00"
        yourAveTimeToReadLabel.text = "Your average reading time"
        aveReadingTimeLabel.text = "(Compute Ave)"
        estimatedTimeToFinnishLabel.text = "you will finnish your book in... "
        totalTimeToFinnishLabel.text = "(compute hrs/days)"
        
        // font
        
        // size
        
        
        // color
        enterPageAmountLabel.backgroundColor = .blue
        pageAmountTextField.backgroundColor = .red
        stopWatchLabel.backgroundColor = .green
        yourAveTimeToReadLabel.backgroundColor = .yellow
        aveReadingTimeLabel.backgroundColor = .red
        estimatedTimeToFinnishLabel.backgroundColor = .blue
        totalTimeToFinnishLabel.backgroundColor = .green
        
        // add to subview
        view.addSubview(enterPageAmountLabel)
        view.addSubview(pageAmountTextField)
        view.addSubview(stopWatchLabel)
        view.addSubview(yourAveTimeToReadLabel)
        view.addSubview(aveReadingTimeLabel)
        view.addSubview(estimatedTimeToFinnishLabel)
        view.addSubview(totalTimeToFinnishLabel)
        
    }
    
    func setupTableView() {
        
    // color
        pageReadTimeTableView.backgroundColor = .purple
        

    // add Targets  ???

    // add to subview
        view.addSubview(pageReadTimeTableView)


    }
    
    
     func setupButtons() {
        
        // pageSaveButton
        pageSaveButton.backgroundColor = .black
//      pageSaveButton.frame = CGRect(
        pageSaveButton.layer.cornerRadius = 0.5 * pageSaveButton.bounds.size.width
        pageSaveButton.layer.borderWidth = 2
//      pageSaveButton.tintColor = .brown
        pageSaveButton.setTitle("Page", for: .normal)
        
        
        // startStopButton
        startStopButton.backgroundColor = .black
//      startStopButton.frame = CGRect(
        startStopButton.layer.cornerRadius = 0.5 * startStopButton.bounds.size.width
        startStopButton.layer.borderWidth = 2
//      startStopButton.tintColor = .brown
        startStopButton.setTitle("Start", for: .normal)
        
        
        // add Targets.
//        pageSaveButton.addTarget(self, action: #selector(pageSaveButtonPressed), for: .touchUpInside)
//        startStopButton.addTarget(self, action: #selector(startStopButtonPressed), for: .touchUpInside)

        // add buttons to subview
        view.addSubview(pageSaveButton)
        view.addSubview(startStopButton)
    }


    
//    @objc func startStopButtonPressed() {
//        if startStopWatch == true {
//
//            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateStopWatch), userInfo: nil, repeats: true)
//
//
//            startStopWatch = false
//
//
//            // MARK: -  Get or Make the Image Button Icons
//
//            startStopButton.setImage(UIImage(named: "Stop.png"), for: UIControlState.normal)
//            // This was the lap button now Page button
//            pageSaveButton.setImage(UIImage(named: "Page.png"), for: UIControlState.normal)
//
//            addPageRead = true
//
//        } else {
//
//            timer.invalidate()
//            startStopWatch = true
//
//            startStopButton.setImage(UIImage(named: "Start.png"), for: UIControlState.normal)
//            // This was the reset button now the save button
//            pageSaveButton.setImage(UIImage(named: "Save.png"), for: UIControlState.normal)
//
//            addPageRead = false
//
//        }
//    }
    
//         @objc func pageSaveButtonPressed() {
//            if addPageRead == true {
//
//                page.insert(stopWatchString, at: 0)
//                pageReadTimeTableView.reloadData()
//
//            } else {
//                addPageRead = false
//
//                // this resets the time but i need it to Pop back to the Detail View Controller
//                pageSaveButton.setImage(UIImage(named: "Page.png"), for: .normal)
//
//                page.removeAll(keepingCapacity: false)
//                pageReadTimeTableView.reloadData()
//                fractionOfSeconds = 0
//                seconds = 0
//                minutes = 0
//
//
//                stopWatchString = "00:00.00"
//                stopWatchLabel.text = stopWatchString
//
//            }
//        }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return page.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "pageCell")
//        cell.backgroundColor = self.view.backgroundColor
//        cell.textLabel?.text = "Page \(page.count-indexPath.row)"
//        cell.detailTextLabel?.text = page[indexPath.row]
//        return cell
//    }
    
    
//    @objc func updateStopWatch() {
//        fractionOfSeconds += 1
//        if fractionOfSeconds == 100 {
//            seconds += 1
//            fractionOfSeconds = 0
//        }
//        if seconds == 60 {
//            minutes += 1
//            seconds = 0
//        }
//        let fractionsString = fractionOfSeconds > 9 ? "\(fractionOfSeconds)" : "0\(fractionOfSeconds)"
//        let secondsString = seconds > 9 ? "\(seconds)" : "0\(seconds)"
//        let minutesString = minutes > 9 ? "\(minutes)" : "0\(minutes)"
//
//        stopWatchString = "\(minutesString):\(secondsString):\(fractionsString)"
//        stopWatchLabel.text = stopWatchString
//    }
//
    func constrainLabelsAndTextFields() {

        // EnterPageAmountLabel
        enterPageAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        NSLayoutConstraint(item: enterPageAmountLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0),
        NSLayoutConstraint(item: enterPageAmountLabel, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 0),
        NSLayoutConstraint(item: enterPageAmountLabel, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.05, constant: 0),
        NSLayoutConstraint(item: enterPageAmountLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.70, constant: 0)
        ])
  
        // pageAmountTextField
        pageAmountTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: pageAmountTextField, attribute: .leading, relatedBy: .equal, toItem: enterPageAmountLabel, attribute: .trailing, multiplier: 1, constant: 10),
            NSLayoutConstraint(item: pageAmountTextField, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: pageAmountTextField, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.05, constant: 0),
            NSLayoutConstraint(item: pageAmountTextField, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.30, constant: 0)
            ])
        
        
        // stopWatchLabel
        stopWatchLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: stopWatchLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: stopWatchLabel, attribute: .top, relatedBy: .equal, toItem: enterPageAmountLabel, attribute: .bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: stopWatchLabel, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.2, constant: 0),
            NSLayoutConstraint(item: stopWatchLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0)
        ])
        

        pageReadTimeTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: pageReadTimeTableView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: pageReadTimeTableView, attribute: .top, relatedBy: .equal, toItem: stopWatchLabel, attribute: .bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: pageReadTimeTableView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.3, constant: 0),
            NSLayoutConstraint(item: pageReadTimeTableView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0)
            ])
        // yourAveTimeToReadLabel
        yourAveTimeToReadLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: yourAveTimeToReadLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: yourAveTimeToReadLabel, attribute: .top, relatedBy: .equal, toItem: pageReadTimeTableView, attribute: .bottom, multiplier: 1, constant: 10),
            NSLayoutConstraint(item: yourAveTimeToReadLabel, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.05, constant: 0),
            NSLayoutConstraint(item: yourAveTimeToReadLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.70, constant: 0)
            ])
        
        // aveReadingTimeLabel
        aveReadingTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: aveReadingTimeLabel, attribute: .leading, relatedBy: .equal, toItem: yourAveTimeToReadLabel, attribute: .trailing, multiplier: 1, constant: 10),
            NSLayoutConstraint(item: aveReadingTimeLabel, attribute: .top, relatedBy: .equal, toItem: pageReadTimeTableView, attribute: .bottom, multiplier: 1, constant: 10),
            NSLayoutConstraint(item: aveReadingTimeLabel, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.05, constant: 0),
            NSLayoutConstraint(item: aveReadingTimeLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.30, constant: 0)
            ])
        
        
        // estimatedTimeToFinnishLabel
        
        
        estimatedTimeToFinnishLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: estimatedTimeToFinnishLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: estimatedTimeToFinnishLabel, attribute: .top, relatedBy: .equal, toItem: yourAveTimeToReadLabel, attribute: .bottom, multiplier: 1, constant: 10),
            NSLayoutConstraint(item: estimatedTimeToFinnishLabel, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.05, constant: 0),
            NSLayoutConstraint(item: estimatedTimeToFinnishLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.70, constant: 0)
            ])
        
        // totalTimeToFinnishLabel
        
        
        totalTimeToFinnishLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: totalTimeToFinnishLabel, attribute: .leading, relatedBy: .equal, toItem: yourAveTimeToReadLabel, attribute: .trailing, multiplier: 1, constant: 10),
            NSLayoutConstraint(item: totalTimeToFinnishLabel, attribute: .top, relatedBy: .equal, toItem: yourAveTimeToReadLabel, attribute: .bottom, multiplier: 1, constant: 10),
            NSLayoutConstraint(item: totalTimeToFinnishLabel, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.05, constant: 0),
            NSLayoutConstraint(item: totalTimeToFinnishLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.30, constant: 0)
            ])
        
        // pageSaveButton
        pageSaveButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: pageSaveButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: view.frame.width/5),
            NSLayoutConstraint(item: pageSaveButton, attribute: .top, relatedBy: .equal, toItem: totalTimeToFinnishLabel, attribute: .bottom, multiplier: 1, constant: 10),
            NSLayoutConstraint(item: pageSaveButton, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.1, constant: 0),
            NSLayoutConstraint(item: pageSaveButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.20, constant: 0)
            ])
        
        pageSaveButton.layer.cornerRadius = (0.5 * view.frame.width * 0.20)

        // startStopButton
        startStopButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: startStopButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -view.frame.width/5),
            NSLayoutConstraint(item: startStopButton, attribute: .top, relatedBy: .equal, toItem: totalTimeToFinnishLabel, attribute: .bottom, multiplier: 1, constant: 10),
            NSLayoutConstraint(item: startStopButton, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.1, constant: 0),
            NSLayoutConstraint(item: startStopButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.20, constant: 0)
            ])
        
        startStopButton.layer.cornerRadius = (0.5 * view.frame.width * 0.20)
        
        
        
    }
   
}


