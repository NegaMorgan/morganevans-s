class Email
  attr_accessor :body, :subject
  attr_writer :to, :from

  def to
    @to ||= ''
  end

  def from
    @from ||= ''
  end

  def deliver
    Pony.mail(
      :to => self.to,
      :sender => self.from,
      :reply_to => self.from,
      :body => self.body,
      :subject => self.subject,
      :headers => {
        "Author" => "this email was sent via the contact form on morganevans.net"
      },
      :via => :smtp,
      :via_options => {
        :address        => 'smtp.gmail.com',
        :port           => '587',
        :user_name      => '',
        :password       => '',
        :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
      }
    )
  end
end