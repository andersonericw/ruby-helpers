require 'net/http'
class Net::HTTPResponse
  def success?
    return false if ! self.is_a? Net::HTTPSuccess
    return true
  end
end
