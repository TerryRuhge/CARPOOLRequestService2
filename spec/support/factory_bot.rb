# frozen_string_literal: true

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end

# # frozen_string_literal: true

FactoryBot.define do
  factory :auth_hash, class: OmniAuth::AuthHash do
    initialize_with do
      OmniAuth::AuthHash.new({
                               provider: provider,
                               uid: uid,
                               info: {
                                 email: email
                               }
                             })
    end

    trait :google_oauth2 do
      provider { 'google_oauth2' }
      sequence(:uid)
      email { 'testuser@gmail.com' }
    end

    trait :google_oauth2_fail do
      provider { 'twitter' }
      uid { 'test' }
      email { 'dadfasd@twitter' }
    end
  end

  factory(:member) do
    email { 'jane.doe@hey.com' }
    password { '123456' }
    # confirmed_at {Time.now}
    password_confirmation { '123456' }
    phone { '2109347654' }
    first_name { 'firstName' }
    last_name { 'lastName' }
    emergency_1_full_name { 'TestingName' }
    emergency_1_phone_number { '2109340228' }
    address { 'adafdsf342' }
  end

  factory(:member2) do
    email { 'jane.doe2@hey.com' }
    password { '123456' }
    # confirmed_at {Time.now}
    password_confirmation { '123456' }
    phone { '2109347654' }
    first_name { 'firstName' }
    last_name { 'lastName2' }
    emergency_1_full_name { 'TestingName' }
    emergency_1_phone_number { '2109340228' }
    address { 'adafdsf342' }
  end
end
