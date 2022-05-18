FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    password { "password" }
    password_confirmation { password }
    confirmed_at { Time.now }

    factory :agent do
      transient do
        profile { {} }
      end

      after :create do |user, options|
        create :agent_profile, user: user, **options.profile
      end
    end
  end
end
