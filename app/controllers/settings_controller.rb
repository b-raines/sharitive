class SettingsController < UIViewController

  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
    @label = UILabel.alloc.initWithFrame(CGRectZero)
    @label.text = "Settings"
    @label.sizeToFit
    @label.center = CGPointMake(self.view.frame.size.width / 2, 40)
    self.view.addSubview @label

    @label = UILabel.new
    @label.text = 'Post to Facebook'
    @label.frame = [[self.view.frame.size.width / 4, 50],[150,50]]
    view.addSubview(@label)

    @switch = UISwitch.alloc.initWithFrame([[self.view.frame.size.width / 4, 100], [0, 0]])
    view.addSubview(@switch)   

    @label = UILabel.new
    @label.text = 'Post to Twitter'
    @label.frame = [[self.view.frame.size.width / 4, 150],[150,50]]
    view.addSubview(@label)

    @switch = UISwitch.alloc.initWithFrame([[self.view.frame.size.width / 4, 200], [0, 0]])
    view.addSubview(@switch)  
  end
end