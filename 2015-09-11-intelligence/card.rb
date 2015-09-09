class Card
  def initialize(your_interest)
    @interest = your_interest
  end

  def our_message
    case @interest
    when :high
      "Entry from http://bbank.jp/career !!"
    when :a_little
      "Access http://bit.ly/allinvideos, http://bbank.jp/allin/matsuebase/ " \
        "and http://blog.all-in.xyz to get to know us !!"
    else
      raise :oh_no
    end
  rescue
    "Wait!! Contact our CTO (https://twitter.com/shoutakenaka) and " \
      "talk with him about our technology stack, our service and so on !!"
  end
end

your_interest = %i(high a_little none).sample
Card.new(your_interest).our_message  #=> ?
