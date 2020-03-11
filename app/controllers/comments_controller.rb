class CommentsController < ApplicationController



def greet
  @time = params[:time]

  @greet_time = case @time
    when 'morning'
      "朝のあいさつ"
    when 'afternoon'
      "昼のあいさつ"
    when 'evening'
      "夕方のあいさつ"
    when 'night'
      "夜のあいさつ"
    else 
      "表示できません"
  end
  
  @greet_word = case @time
    when 'morning'
      "おはようございます"
    when 'afternoon'
      "こんにちは"
    when 'evening'
      "こんばんは"
    when 'night'
      "おやすみなさい"
    else
      "fxxk you!!"
    end
end

def free
  @word = params[:word]
end

def random
  array = ["おはよう","こんにちは","こんばんは","おやすみ"]
  random = rand(array.count)
  @word = array[random]
end  

end
