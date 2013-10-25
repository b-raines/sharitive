class NonProfitsController < UIViewController
  def viewDidLoad
    super
    self.title = "Non-Profits"
    self.view.backgroundColor = UIColor.whiteColor

    code = UIImage.imageNamed("SCFG.jpg")
    @code_image = UIImageView.alloc.initWithImage(code)
    @code_image.center = CGPointMake(self.view.frame.size.width / 2, 115)
    self.view.addSubview @code_image

    heart = UIImage.imageNamed("heart.jpg")
    @heart_image = UIImageView.alloc.initWithImage(heart)
    @heart_image.center = CGPointMake(25, 495)
    self.view.addSubview @heart_image

    bubbles = UIImage.imageNamed("bubbles.png")
    @bubble_image = UIImageView.alloc.initWithImage(bubbles)
    @bubble_image.center = CGPointMake(self.view.frame.size.width / 2, 505)
    self.view.addSubview @bubble_image

    @donate = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @donate.font = @donate.font.fontWithSize 18
    @donate.frame = [[205,486],[150,37]]
    @donate.setTitle("Donate", forState:UIControlStateNormal)
    self.view.addSubview @donate

    @mission_statement = UITextView.alloc.initWithFrame(CGRectZero)
    @mission_statement.text = "Increases the confidence and literacy in science,\ntechnology, engineering and mathematics of girls K-12."
    @mission_statement.sizeToFit
    @mission_statement.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height / 2.75)
    self.view.addSubview @mission_statement

    @benefits = UITextView.alloc.initWithFrame(CGRectZero)
    @benefits.text = "- $5 covers the cost of one textbook\n- $10 covers the cost of one lesson\n- $20 covers a field trip for one student"
    @benefits.sizeToFit
    @benefits.center = CGPointMake(self.view.frame.size.width/2.5, self.view.frame.size.height / 2)
    self.view.addSubview @benefits
  end
end