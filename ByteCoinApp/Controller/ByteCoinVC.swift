//
//  ByteCoinVC.swift
//  ByteCoinApp
//
//  Created by Никита Швец on 22.11.2022.
//

import UIKit

class ByteCoinVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, ByteCoinDelegate {

    let byteCoinLabel = UILabel()
    let byteCoinView = UIView()
    let byteCoinSignImageView = UIImageView()
    let byteCoinValueLabel = UILabel()
    let byteCoinCurrencyLabel = UILabel()
    let currencyPicker = UIPickerView()
    let byteCoinManager = ByteCoinManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        byteCoinManager.delegate = self
        currencyPicker.delegate = self
        currencyPicker.dataSource = self
        configureUI()
        byteCoinManager.fetchRate(row: 0)

        
    }
    
    func didUpdateByteCoin(byteCoinData: DataModel) {
        DispatchQueue.main.async {
            self.byteCoinValueLabel.text = byteCoinData.stringRate
            self.byteCoinCurrencyLabel.text = byteCoinData.currency
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        byteCoinManager.countryArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return byteCoinManager.countryArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        byteCoinManager.fetchRate(row: row)
    }
    
    

}
