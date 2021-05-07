class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, finish)
    poem = ""
    start.downto(finish){|i| poem += verse(i) + "\n"}
    poem.delete_suffix("\n")
  end

  def verse(bottles)
    first_part(bottles) + second_part(bottles)
  end

  def first_part(bottles)
    "#{humanize_bottles(bottles, true)} of milk on the wall, " +
    "#{humanize_bottles(bottles)} of milk.\n"
  end

  def second_part(bottles)
    if bottles > 0
      "Take #{(bottles == 1 ? "it" : "one")} down and pass it around, " +
      "#{humanize_bottles(bottles - 1)} of milk on the wall.\n"
    else
      "Go to the store and buy some more, " +
      "99 bottles of milk on the wall.\n"
    end
  end

  def humanize_bottles(number, capital = false)
    if number > 1
      number.to_s + " bottles"
    elsif number == 0
      "#{(capital ? "N" : "n")}o more bottles"
    else
      number.to_s + " bottle"
    end
  end
end
