// MIT license. Copyright (c) 2016 SwiftyFORM. All rights reserved.
import UIKit


public protocol FormItemVisitor {
	func visit(object: AttributedTextFormItem)
	func visit(object: ButtonFormItem)
	func visit(object: CustomFormItem)
	func visit(object: DatePickerFormItem)
	func visit(object: MetaFormItem)
	func visit(object: OptionPickerFormItem)
	func visit(object: OptionRowFormItem)
	func visit(object: PickerViewFormItem)
	func visit(object: PrecisionSliderFormItem)
	func visit(object: SectionFooterTitleFormItem)
	func visit(object: SectionFooterViewFormItem)
	func visit(object: SectionFormItem)
	func visit(object: SectionHeaderTitleFormItem)
	func visit(object: SectionHeaderViewFormItem)
	func visit(object: SegmentedControlFormItem)
	func visit(object: SliderFormItem)
	func visit(object: StaticTextFormItem)
	func visit(object: StepperFormItem)
	func visit(object: SwitchFormItem)
	func visit(object: TextFieldFormItem)
	func visit(object: TextViewFormItem)
	func visit(object: ViewControllerFormItem)
}

open class FormItem: NSObject {
	
	public override init() {
	}
	
	func accept(visitor: FormItemVisitor) {}
	
	// For serialization to json purposes, eg. "firstName"
	open var elementIdentifier: String?
	open func elementIdentifier(_ elementIdentifier: String?) -> Self {
		self.elementIdentifier = elementIdentifier
		return self
	}
	
	// For styling purposes, eg. "bottomRowInFirstSection"
	open var styleIdentifier: String?
	open func styleIdentifier(_ styleIdentifier: String?) -> Self {
		self.styleIdentifier = styleIdentifier
		return self
	}

	// For styling purposes, eg. "leftAlignedGroup0"
	open var styleClass: String?
	open func styleClass(_ styleClass: String?) -> Self {
		self.styleClass = styleClass
		return self
	}
}
