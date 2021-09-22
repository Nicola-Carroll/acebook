module EmojiHelper
  def emojify(content)
    (content).to_str.gsub(/:([\w+-]+):/) do |match|
      if emoji = Emoji.find_by_alias($1).raw
        %(<img alt="#$1" src="../public/images/emoji/unicode/#{emoji}" 
        style="vertical-align:middle" width="20" height="20" />)
      else
        match
      end
      p emoji 
    end.html_safe if content.present?
  end
end 