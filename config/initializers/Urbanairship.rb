if Rails.env.development?
    Urbanairship.application_key = 'KBz5-qxPSA2PEB9WHdncqw'
    Urbanairship.application_secret ='JNy_ELzGRdiwCS7SoGhgnQ'
    Urbanairship.master_secret ='VIcUwRg1Q-eIFiU7FbYfqQ'
    Urbanairship.logger = Rails.logger
    Urbanairship.request_timeout = 5 # default~/
elsif Rails.env.staging?
    Urbanairship.application_key ='KBz5-qxPSA2PEB9WHdncqw'
    Urbanairship.application_secret ='JNy_ELzGRdiwCS7SoGhgnQ'
    Urbanairship.master_secret ='VIcUwRg1Q-eIFiU7FbYfqQ'
    Urbanairship.logger = Rails.logger
    Urbanairship.request_timeout = 5 # default~/
 else
    Urbanairship.application_key ='KBz5-qxPSA2PEB9WHdncqw'
    Urbanairship.application_secret ='JNy_ELzGRdiwCS7SoGhgnQ'
    Urbanairship.master_secret ='VIcUwRg1Q-eIFiU7FbYfqQ'
    Urbanairship.logger = Rails.logger
    Urbanairship.request_timeout = 5 # default~/
 end


#  if Rails.env.development?
#     Urbanairship.application_key = 'oshuL8_3S0KygafGeNJM9A'
#     Urbanairship.application_secret = 'FdHoBoQCST-vBiK1YSww3A'
#     Urbanairship.master_secret = 't-enk1doTJSc2vw1XHSFKg'
#     Urbanairship.logger = Rails.logger
#     Urbanairship.request_timeout = 5 # default~/
# elsif Rails.env.staging?
#     Urbanairship.application_key = 'oshuL8_3S0KygafGeNJM9A'
#     Urbanairship.application_secret = 'FdHoBoQCST-vBiK1YSww3A'
#     Urbanairship.master_secret = 't-enk1doTJSc2vw1XHSFKg'
#     Urbanairship.logger = Rails.logger
#     Urbanairship.request_timeout = 5 # default~/
#  else
#     Urbanairship.application_key = 'oshuL8_3S0KygafGeNJM9A'
#     Urbanairship.application_secret = 'FdHoBoQCST-vBiK1YSww3A'
#     Urbanairship.master_secret = 't-enk1doTJSc2vw1XHSFKg'
#     Urbanairship.logger = Rails.logger
#     Urbanairship.request_timeout = 5 # default~/
#  end

