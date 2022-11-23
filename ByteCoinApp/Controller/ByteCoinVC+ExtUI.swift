//
//  ByteCoinVC+ExtUI.swift
//  ByteCoinApp
//
//  Created by Никита Швец on 23.11.2022.
//

import UIKit

extension ByteCoinVC {
    
    func configureUI() {
        view.backgroundColor = .systemMint
        configureByteCoinLabel()
        configureByteCoinView()
        configureByteCoinSignImageView()
        configureByteCoinValueLabel()
        configureByteCoinCurrencyLabel()
        configureCurrencyPicker()
    }
    
    func configureByteCoinLabel() {
        view.addSubview(byteCoinLabel)
        byteCoinLabel.translatesAutoresizingMaskIntoConstraints = false
        byteCoinLabel.text = "ByteCoin"
        byteCoinLabel.font = .systemFont(ofSize: 50, weight: .thin)
        NSLayoutConstraint.activate([
            byteCoinLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            byteCoinLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    
    func configureByteCoinView() {
        view.addSubview(byteCoinView)
        byteCoinView.translatesAutoresizingMaskIntoConstraints = false
        byteCoinView.backgroundColor = .systemBlue
        byteCoinView.alpha = 0.8
        byteCoinView.layer.cornerRadius = 50
        NSLayoutConstraint.activate([
            byteCoinView.widthAnchor.constraint(equalToConstant: 340),
            byteCoinView.heightAnchor.constraint(equalToConstant: 100),
            byteCoinView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            byteCoinView.topAnchor.constraint(equalTo: byteCoinLabel.bottomAnchor, constant: 60)
        ])
    }
    
    func configureByteCoinSignImageView() {
        byteCoinView.addSubview(byteCoinSignImageView)
        byteCoinSignImageView.translatesAutoresizingMaskIntoConstraints = false
        byteCoinSignImageView.layer.cornerRadius = 50
        byteCoinSignImageView.image = UIImage(systemName: "bitcoinsign.circle.fill")
        byteCoinSignImageView.tintColor = .white
        NSLayoutConstraint.activate([
            byteCoinSignImageView.widthAnchor.constraint(equalToConstant: 100),
            byteCoinSignImageView.heightAnchor.constraint(equalToConstant: 100),
            byteCoinSignImageView.centerYAnchor.constraint(equalTo: byteCoinView.centerYAnchor),
            byteCoinSignImageView.leadingAnchor.constraint(equalTo: byteCoinView.leadingAnchor)
        ])
    }
    
    func configureByteCoinValueLabel() {
        byteCoinView.addSubview(byteCoinValueLabel)
        byteCoinValueLabel.translatesAutoresizingMaskIntoConstraints = false
        byteCoinValueLabel.text = "12444"
        byteCoinValueLabel.textAlignment = .center
        byteCoinValueLabel.textColor = .white
        byteCoinValueLabel.font = .systemFont(ofSize: 25, weight: .regular)
        NSLayoutConstraint.activate([
            byteCoinValueLabel.centerXAnchor.constraint(equalTo: byteCoinView.centerXAnchor),
            byteCoinValueLabel.centerYAnchor.constraint(equalTo: byteCoinView.centerYAnchor)
        ])
    }
    
    func configureByteCoinCurrencyLabel() {
        byteCoinView.addSubview(byteCoinCurrencyLabel)
        byteCoinCurrencyLabel.translatesAutoresizingMaskIntoConstraints = false
        byteCoinCurrencyLabel.text = "USD"
        byteCoinCurrencyLabel.textAlignment = .center
        byteCoinCurrencyLabel.textColor = .white
        byteCoinCurrencyLabel.font = .systemFont(ofSize: 25, weight: .regular)
        NSLayoutConstraint.activate([
            byteCoinCurrencyLabel.centerYAnchor.constraint(equalTo: byteCoinView.centerYAnchor),
            byteCoinCurrencyLabel.trailingAnchor.constraint(equalTo: byteCoinView.trailingAnchor, constant: -20)
        ])
    }
    
    func configureCurrencyPicker() {
        view.addSubview(currencyPicker)
        currencyPicker.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            currencyPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            currencyPicker.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }
}

