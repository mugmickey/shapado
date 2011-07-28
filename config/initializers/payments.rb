if AppConfig.is_shapadocom
  PaymentsConfig = YAML.load_file("#{Rails.root}/config/payments.yml")[Rails.env]

  if Rails.env != "production"
    ActiveMerchant::Billing::Base.mode = :test
  end
end