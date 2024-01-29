class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
   arrayMsg = @line.split(/ /,2)
   puts "#{arrayMsg[1]}"
  end

  def log_level
    raise 'Please implement the LogLineParser#log_level method'
  end

  def reformat
    raise 'Please implement the LogLineParser#reformat method'
  end
end

phrase = LogLineParser.new('[ERROR]: Invalid operation').message
phrase2 = LogLineParser.new('[WARNING]:  Disk almost full\r\n').message

