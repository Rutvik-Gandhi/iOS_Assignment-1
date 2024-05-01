//
//  ViewController.swift
//  Ricky_Rutvik_Assign_1
//
//  Created by user215207 on 9/21/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var purple_ticket_text_field: UITextField!
    
    @IBOutlet weak var green_ticket_text_field: UITextField!
    
    @IBOutlet weak var blue_ticket_text_field: UITextField!
    
    @IBOutlet weak var total_price_sum: UITextField!
    
    @IBOutlet weak var average_price_sum: UITextField!
    
    var purpleTicketPrice:Int = 50;
    var greenTicketPrice:Int = 80;
    var blueTicketprice:Int = 100;
    
    @IBAction func calculate_tickets(_ sender: Any) {
        let noOfPurpleTicket = Int(purple_ticket_text_field.text!) ?? 0

                let noOfGreenTicket = Int(green_ticket_text_field.text!) ?? 0

                let noOfBlueTicket = Int(blue_ticket_text_field.text!) ?? 0

                let totalPrice = (noOfPurpleTicket *  purpleTicketPrice) + (noOfGreenTicket * greenTicketPrice) + (noOfBlueTicket * blueTicketprice)

                let avg_games = Double((totalPrice)) / Double((noOfPurpleTicket) + (noOfGreenTicket) + (noOfBlueTicket))

                
                
                average_price_sum.text = "\(avg_games)"
                
                total_price_sum.text = "\(totalPrice)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

