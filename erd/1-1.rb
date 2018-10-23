graph onetoone {
  rankdir=LR;
  node[shape="box"]
  Cohort
  SlackChannel
  Cohort -- SlackChannel
}
class Cohort
  def initialize(name, slack_channel)
    @name = name
    @slack_channel = slack_channel
  end

  attr_reader :name, :slack_channel
end

class SlackChannel
  def initialize(name)
    @name = name
  end

  attr_reader :name
end

slack_channel = SlackChannel.new("blue-july2017")
cohort = Cohort.new("Blue July 2017", slack_channel)