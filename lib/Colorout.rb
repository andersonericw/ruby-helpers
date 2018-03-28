class String

  def black;          "\e[30m#{self}\e[0m" end
  def red;            "\e[31m#{self}\e[0m" end
  def green;          "\e[32m#{self}\e[0m" end
  def brown;          "\e[33m#{self}\e[0m" end
  def blue;           "\e[34m#{self}\e[0m" end
  def magenta;        "\e[35m#{self}\e[0m" end
  def cyan;           "\e[36m#{self}\e[0m" end
  def gray;           "\e[37m#{self}\e[0m" end

  def term_status_format(result, success)
    num_spaces = 80-self.size-result.size-5
    if num_spaces < 1 
      raise 'Functionality not supported with line length greater than 80'
      return nil
    end
     
    spaces = ''
    for i in 0..num_spaces do
      spaces = spaces + ' '
    end
    result = '[ ' + result.send(success) + ' ]'
    return self + spaces + result
  end

end
