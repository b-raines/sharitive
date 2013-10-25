class AchievementsController < UIViewController

  def viewDidLoad
    super
    self.title = "Achievements"
    self.view.backgroundColor = UIColor.whiteColor

    @myTableView = UITableView.alloc.initWithFrame(view.bounds, style:UITableViewStyleGrouped)
    @myTableView.dataSource = self
    @myTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight

    view.addSubview(@myTableView)
  end

  # Required for TableView datasource protocol
  # Sets the number of sections for the tableView
  def numberOfSectionsInTableView(tableView)
    result = 1
  end

  # Sets the number of rows in each section
  def tableView(tableView, numberOfRowsInSection:section)
    result = 10
  end

  # Modifies each cell
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    result = nil
    names = ["Bert", "Ernie", "Fozzie", "Oscar", "Jim", "Elmo", "Grover", "Kermit", "Gonzo", "Piggy"]
    cash = ["$55", "$52", "$48", "$47", "$39", "$33", "$30", "$25", "$22", "$18"]
    if(tableView == @myTableView)
      tableViewCellIdentifier = "MyCells"

      result = tableView.dequeueReusableCellWithIdentifier(tableViewCellIdentifier)

      if(result == nil)
        result = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:tableViewCellIdentifier)
      end

      name = names[indexPath.row]
      cash = cash[indexPath.row]
      rank = indexPath.row + 1

      result.textLabel.text = "#{rank}.\t#{name}\t\t\t\t\t\t\t#{cash}"
    end
    result
  end


  def tableView(tableView, titleForHeaderInSection:section)
    result = "Leaderboard"
  end
end