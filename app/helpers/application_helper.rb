module ApplicationHelper
  def deparameterize(string)
    string.gsub("-", " ").gsub("_", " ").gsub(" 00", ".00").split.join(' ').capitalize
  end
end
