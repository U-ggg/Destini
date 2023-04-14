//
//  ViewController.swift
//  Destini
//
//  Created by sidzhe on 11.04.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var storyStruct = StoryStruct()
    
    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "backgr")
        return view
    }()
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fillProportionally
        view.spacing = 20
        return view
    }()
    
    private lazy var buttonPink: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(named: "button1"), for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont(name: "Menlo", size: 15)
        button.addTarget(self, action: #selector(pressed(sender:)), for: .touchUpInside)
        button.titleLabel?.numberOfLines = 0
        return button
    }()
    
    private lazy var buttonPurple: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(named: "button2"), for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont(name: "Menlo", size: 15)
        button.addTarget(self, action: #selector(pressed(sender:)), for: .touchUpInside)
        button.titleLabel?.numberOfLines = 0
        return button
    }()
    
    private lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Menlo", size: 25)
        label.textColor = .white
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        updateUI()
        
    }
    
    private func setupViews() {
        view.addSubview(imageView)
        view.addSubview(stackView)
        stackView.addArrangedSubview(headerLabel)
        stackView.addArrangedSubview(buttonPink)
        stackView.addArrangedSubview(buttonPurple)
        
        imageView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.right.equalToSuperview()
        }
        stackView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.topMargin)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottomMargin)
            make.left.right.equalToSuperview().inset(16)
        }
        buttonPink.snp.makeConstraints { make in
            make.height.equalTo(100)
        }
        buttonPurple.snp.makeConstraints { make in
            make.height.equalTo(100)
        }
    }
    
    @objc private func pressed(sender: UIButton) {
        storyStruct.checkAnswer(answer: sender.currentTitle ?? "Error")
        updateUI()
    }
    
    private func updateUI() {
        headerLabel.text = storyStruct.story[storyStruct.numberOfStory].title
        buttonPink.setTitle(storyStruct.story[storyStruct.numberOfStory].choice1, for: .normal)
        buttonPurple.setTitle(storyStruct.story[storyStruct.numberOfStory].choice2, for: .normal)
    }
}

