class TapController < UIViewController

  def donate
    alert = UIAlertView.new
    alert.message = "Would you like to donate to \'Puppies with Cancer\'?"
    alert.addButtonWithTitle "Yes"
    alert.addButtonWithTitle "Choose a different non-profit..."
    alert.addButtonWithTitle "Cancel"
    alert.alertViewStyle = UIAlertViewStyleDefault
    alert.show
    true
  end

  def open_achievements
    achievements_controller = AchievementsController.alloc.init
    self.navigationController.pushViewController(achievements_controller, animated: 'true')
  end

  def open_non_profits
    non_profits_controller = NonProfitsController.alloc.init
    self.navigationController.pushViewController(non_profits_controller, animated: 'true')
  end

  def open_scan
    scan_controller = ScanController.alloc.init
    self.navigationController.pushViewController(scan_controller, animated: 'true')
  end

  def viewDidLoad
    super

    self.title = "Sharitive"
    self.view.backgroundColor = UIColor.whiteColor

    @top_margin = UIEdgeInsetsMake(70,0,0,0)

    #scan
    @scan = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @scan.frame = [[5,105],[150,200]]
    @scan.setTitle("Scan", forState:UIControlStateNormal)
    @scan.contentEdgeInsets = @top_margin
    # events
    @scan.addTarget(self, action:'open_scan', forControlEvents:UIControlEventTouchUpInside)
    view.addSubview(@scan)
    # image
    scan = UIImage.imageNamed("scan.png")
    @scan_image = UIImageView.alloc.initWithImage(scan)
    @scan_image.center = CGPointMake(self.view.frame.size.width / 4, 185)
    self.view.addSubview @scan_image

    #non-profits
    @non_profits = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @non_profits.frame = [[5,315],[150,200]]
    @non_profits.setTitle("Non-Profits", forState:UIControlStateNormal)
    @non_profits.contentEdgeInsets = @top_margin
    # events
    @non_profits.addTarget(self, action:'open_non_profits', forControlEvents:UIControlEventTouchUpInside)
    view.addSubview(@non_profits)
    # image
    non_profits = UIImage.imageNamed("nonprofits.png")
    @non_profits_image = UIImageView.alloc.initWithImage(non_profits)
    @non_profits_image.center = CGPointMake(self.view.frame.size.width / 4, 380)
    self.view.addSubview @non_profits_image

    #achievements
    @achievements = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @achievements.frame = [[165,315],[150,200]]
    @achievements.setTitle("Achievements", forState:UIControlStateNormal)
    @achievements.contentEdgeInsets = @top_margin
    # events
    @achievements.addTarget(self, action:'open_achievements', forControlEvents:UIControlEventTouchUpInside)
    view.addSubview(@achievements)
    # image
    achievements = UIImage.imageNamed("achievements.png")
    @achievements_image = UIImageView.alloc.initWithImage(achievements)
    @achievements_image.center = CGPointMake(240, 385)
    self.view.addSubview @achievements_image

    #donate
    @donate = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @donate.frame = [[165,105],[150,200]]
    @donate.setTitle("Donate", forState:UIControlStateNormal)
    @donate.contentEdgeInsets = @top_margin
    # events
    @donate.addTarget(self, action:'donate', forControlEvents:UIControlEventTouchUpInside)
    view.addSubview(@donate)
    # image
    donate = UIImage.imageNamed("donate.png")
    @donate_image = UIImageView.alloc.initWithImage(donate)
    @donate_image.center = CGPointMake(240, 185)
    self.view.addSubview @donate_image

    #cash
    @cash = UILabel.new
    @cash.text = "$25"
    @cash.frame = [[285,55],[50,50]]
    self.view.addSubview @cash

    #user
    @user = UILabel.new
    @user.text = "Dustin Pedroia"
    @user.frame = [[10,55],[150,50]]
    self.view.addSubview @user

    #fonts
    @scan.font = @scan.font.fontWithSize 20
    @non_profits.font = @non_profits.font.fontWithSize 20
    @achievements.font = @achievements.font.fontWithSize 20
    @donate.font = @donate.font.fontWithSize 20
    @cash.font = @cash.font.fontWithSize 14
    @user.font = @user.font.fontWithSize 14

    three = UIImage.imageNamed("three.png")
    @three_image = UIImageView.alloc.initWithImage(three)
    @three_image.center = CGPointMake(130, 340)
    self.view.addSubview @three_image

    eight = UIImage.imageNamed("eight.png")
    @eight_image = UIImageView.alloc.initWithImage(eight)
    @eight_image.center = CGPointMake(290, 340)
    self.view.addSubview @eight_image

    vertical = UIImage.imageNamed("vertical.png")
    @vertical_line = UIImageView.alloc.initWithImage(vertical)
    @vertical_line.center = CGPointMake(self.view.frame.size.width / 2, 550)
    self.view.addSubview @vertical_line

    horizontal = UIImage.imageNamed("horizontal.png")
    @horizontal_line = UIImageView.alloc.initWithImage(horizontal)
    @horizontal_line.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height / 2 + 25)
    self.view.addSubview @horizontal_line

    horizontal2 = UIImage.imageNamed("horizontal.png")
    @horizontal2_line = UIImageView.alloc.initWithImage(horizontal2)
    @horizontal2_line.center = CGPointMake(self.view.frame.size.width/2, 100)
    self.view.addSubview @horizontal2_line

  end
end