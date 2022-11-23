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
        byteCoinView.layer.cornerRadius = 40
        NSLayoutConstraint.activate([
            byteCoinView.widthAnchor.constraint(equalToConstant: 300),
            byteCoinView.heightAnchor.constraint(equalToConstant: 80),
            byteCoinView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            byteCoinView.topAnchor.constraint(equalTo: byteCoinLabel.bottomAnchor, constant: 60)
        ])
    }
    
    func configureByteCoinSignImageView() {
        byteCoinView.addSubview(byteCoinSignImageView)
        byteCoinSignImageView.translatesAutoresizingMaskIntoConstraints = false
        byteCoinSignImageView.layer.cornerRadius = 40
        byteCoinSignImageView.image = UIImage(systemName: "bitcoinsign.circle.fill")
        byteCoinSignImageView.tintColor = .white
        NSLayoutConstraint.activate([
            byteCoinSignImageView.widthAnchor.constraint(equalToConstant: 80),
            byteCoinSignImageView.heightAnchor.constraint(equalToConstant: 80),
            byteCoinSignImageView.centerYAnchor.constraint(equalTo: byteCoinView.centerYAnchor),
            byteCoinSignImageView.leadingAnchor.constraint(equalTo: byteCoinView.leadingAnchor)
        ])
    }
    
    func configureByteCoinValueLabel() {
        
    }
    
    func configureByteCoinCurrencyLabel() {
        
    }
    
    func configureCurrencyPicker() {
        
    }
    
}

