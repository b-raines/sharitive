class ScanController < UIViewController
  def viewDidLoad
    super
    self.title = "Scan"
    self.view.backgroundColor = UIColor.whiteColor

    image = UIImage.imageNamed("qrcode.png")
    @code_image = UIImageView.alloc.initWithImage(image)
    @code_image.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    self.view.addSubview @code_image
  end
end