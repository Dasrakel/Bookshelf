class Notifier < ActionMailer::Base
  default :from => "Bookshelf"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.trade_request.subject
  #
  def trade_request(book,ontvanger,verzender)
    @book = book
    @ontvanger = ontvanger
    @verzender = verzender
    mail :to => "#{ontvanger.email}", :subject => "#{verzender.username} wil iets ruilen tegen jou boek : #{book.bookTitle}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.trade_accepted.subject
  #
  def trade_accepted
    @greeting = "Hi"

    mail :to => "to@example.org"
  end
end
