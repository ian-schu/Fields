//
//  PickerOptionTextCell.swift
//  Fields
//
//  Copyright © 2019 Radiant Tap
//  MIT License · http://choosealicense.com/licenses/mit/
//

import UIKit

class PickerOptionTextCell: UICollectionViewCell, NibReusableView {
	//	UI
	@IBOutlet private var valueLabel: UILabel!
	@IBOutlet private var ccontentView: UIView!
}

extension PickerOptionTextCell {
	override func awakeFromNib() {
		super.awakeFromNib()
		cleanup()
	}

	override func prepareForReuse() {
		super.prepareForReuse()
		cleanup()
	}

	func populate(with text: String) {
		valueLabel.text = text

		ccontentView.backgroundColor = isSelected ? .white : .clear
	}

	override func updateConstraints() {
		valueLabel.preferredMaxLayoutWidth = valueLabel.bounds.width
		super.updateConstraints()
	}

	override var isSelected: Bool {
		didSet {
			ccontentView.backgroundColor = isSelected ? .white : .clear
		}
	}
}

private extension PickerOptionTextCell {
	func cleanup() {
		valueLabel.text = nil
	}
}

