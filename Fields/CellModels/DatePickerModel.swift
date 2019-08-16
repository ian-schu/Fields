//
//  DatePickerModel.swift
//  Fields
//
//  Copyright © 2019 Radiant Tap
//  MIT License · http://choosealicense.com/licenses/mit/
//

import UIKit

/// Model that corresponds to DatePickerCell instance.
class DatePickerModel: FieldModel {
	///	unique identifier (across the containing form) for this field
	let id: String

	///	String to display in the title label
	var title: String?

	///	Chosen date
	var value: Date?

	///	Timestamp to show if `value` is not set
	var placeholder: Date

	///	Instance of DateFormatter to use and build String representation
	var formatter: DateFormatter

	///	Custom configuration for the date picker.
	///
	///	Default implementation does nothing.
	var customSetup: (UIDatePicker) -> Void = {_ in}

	///	Method called every time value of the picker changes.
	///
	///	Default implementation does nothing.
	var valueChanged: (Date?, DatePickerCell) -> Void = {_, _ in}

	init(id: String,
		 title: String? = nil,
		 value: Date? = nil,
		 placeholder: Date = Date(),
		 formatter: DateFormatter,
		 customSetup: @escaping (UIDatePicker) -> Void = {_ in},
		 valueChanged: @escaping (Date?, DatePickerCell) -> Void = {_, _ in}
	){
		self.id = id

		self.title = title
		self.value = value
		self.placeholder = placeholder

		self.formatter = formatter

		self.customSetup = customSetup
		self.valueChanged = valueChanged
	}
}

