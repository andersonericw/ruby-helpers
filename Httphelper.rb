require 'net/http'
class Net::HTTPResponse
  def success?
    if ! self.is_a? Net::HTTPResponse
      raise 'http_response must be Net::HTTP'
      return nil
    end
    return false if ! self.is_a? Net::HTTPSuccess
    return true
  end
end
