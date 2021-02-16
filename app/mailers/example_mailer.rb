class ExampleMailer < ApplicationMailer
    default from: 'miturriago@uninorte.edu.co'

    def sample_email(user)
        @user = user
        mail(to: @user.email, subject: 'Sample Email')
    end
end
