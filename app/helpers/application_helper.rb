module ApplicationHelper
  def deparameterize(string)
    string.gsub("-", " ").gsub("_", " ").split.join(' ').capitalize
  end
end
