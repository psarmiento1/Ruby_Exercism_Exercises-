class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    myString = @line.split(":")
    myString[1].strip
  end

  def log_level
    myString = @line.split(":")
    levelstring = myString[0].gsub(/[\[\]]/,'')
    levelstring.downcase
  end

  def reformat
    message + ' (' + log_level + ')'
  end
end
