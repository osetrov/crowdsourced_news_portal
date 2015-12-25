class UserNotifier < ApplicationMailer
  def report(user, article)
    @user = user
    @article = article
    mail(to: user.email, subject: 'Новая статья. ' + article.title, skip_premailer: false)
  end

  handle_asynchronously :report
end
