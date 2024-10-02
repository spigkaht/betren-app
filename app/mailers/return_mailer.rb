class ReturnMailer < ApplicationMailer
  default from: "Better Rentals <hello@betterrentals.com.au>"

  def send_return_email(ret)
    @return = ret
    mail(
      to: "benj@betterrentals.com.au",
      subject: "Return completed for contract ##{ret.contract.CNTR}"
    )
  end
end
