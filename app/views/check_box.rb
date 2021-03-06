# Author: Michael Forrest | Good To Hear | http://goodtohear.co.uk | License terms: credit me.
class CheckBox < UIView
  attr_accessor :label
  def initWithFrame frame
    if super
      build
    end
    self
  end
  def build
    @backing = UIView.alloc.initWithFrame [[10,10],[24,24]]
    addSubview @backing
    @checkmark = UIImageView.alloc.initWithImage UIImage.imageNamed "check_mark"
    @checkmark.frame = [[12,12], @checkmark.frame.size]
    addSubview @checkmark
  end
  def set_color color
    @backing.backgroundColor = color
  end
  def set_checked checked
    @checkmark.hidden = !checked
  end
  def checked?
    !@checkmark.hidden?
  end
  def accessibilityLabel
    "Checkbox for #{@label} #{checked? ? "Checked" : "Not checked" }"
  end
  def isAccessibilityElement
    true
  end
end