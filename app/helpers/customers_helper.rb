module CustomersHelper
  def gravatar_url_for(email)
     "http://www.gravatar.com/avatar/" + Digest::MD5.hexdigest(email)
  end
end
