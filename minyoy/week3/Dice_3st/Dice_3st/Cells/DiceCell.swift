//
//  DiceCell.swift
//  Dice_3st
//
//  Created by 주민영 on 10/13/24.
//

import UIKit

class DiceCell: UITableViewCell {
    
    static let identifier = "DiceCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setViews()
        self.setConstaints()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.diceImageView.image = nil
        self.diceName.text = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var diceImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    private lazy var diceName: UILabel = {
        let name = UILabel()
        name.font = UIFont.systemFont(ofSize: 20)
        name.textColor = UIColor.black
        return name
    }()
    
    private func setViews() {
        self.addSubview(diceImageView)
        self.addSubview(diceName)
    }
    
    private func setConstaints() {
        diceImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(11)
            $0.left.equalToSuperview().offset(13)
            $0.bottom.equalToSuperview().offset(-10)
            $0.width.height.equalTo(75)
        }
        
        diceName.snp.makeConstraints {
            $0.top.equalToSuperview().offset(36.5)
            $0.left.equalTo(diceImageView.snp.right).offset(87)
            $0.right.equalToSuperview().offset(-147)
        }
    }
    
    public func configure(model: DiceModel) {
        self.diceImageView.image = UIImage(named: model.diceImage)
        self.diceName.text = model.diceName
    }

}
