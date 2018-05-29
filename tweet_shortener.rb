def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end 

def word_substituter(tweet)
  tweet.split(" ").map {|word|
    dictionary.keys.include?(word.downcase)?
    word = dictionary[word.downcase] : word}.join(" ")
end 

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    shortened_tweet = word_substituter(tweet)
    shortened_tweet = shortened_tweet[0..136] + "..."
    return shortened_tweet
  else 
    return tweet
  end
end
    

  