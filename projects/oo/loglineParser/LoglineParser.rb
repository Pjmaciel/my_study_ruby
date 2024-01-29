class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    # Extrai a mensagem após o primeiro ':'
    @line.split(':', 2).last.strip.gsub(/\[|\]/, '')
  end

  def log_level
    @line.split(':', 2).first.strip.downcase.gsub(/\[|\]/, '')
  end

  def reformat
    msg_reformatted = "#{message} (#{log_level})"
    puts msg_reformatted
    msg_reformatted
  end
end

# Testes
parser = LogLineParser.new('[ERROR]: Segmentation fault')
assert_equal 'Segmentation fault (error)', parser.reformat

parser = LogLineParser.new('[WARNING]: Decreased performance')
assert_equal 'Decreased performance (warning)', parser.reformat

parser = LogLineParser.new('[INFO]: Disk defragmented')
assert_equal 'Disk defragmented (info)', parser.reformat

parser = LogLineParser.new("[ERROR]: \t Corrupt disk\t \t \r\n")
assert_equal 'Corrupt disk (error)', parser.reformat
