//
//  calendarViewController.swift
//  BirthBook
//
//  Created by Hoang Quang Dat on 16/04/2024.
//

import UIKit

class calendarViewController: UIViewController {
    private var calendarView: UICalendarView!
    
    @IBOutlet weak var calendarContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 1.
        self.calendarView = UICalendarView()
        // 2.
        calendarView.translatesAutoresizingMaskIntoConstraints = false
        // 3.
        calendarContainerView.addSubview(calendarView)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
