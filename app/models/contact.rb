class Contact < MailForm::Base
  append :remote_ip, :user_agent
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :telephone,     validate: true
  attribute :message
  validates :message,   length: { in: 15..2000 }

  def headers
    {
      subject: 'Contact Form',
      to: 'flindagba@gmail.com',
      from: %("#{name}" <#{email}>)
    }
  end
end
