FactoryBot.define do
  factory :text do
    sentence {'Hello'}
    translate {'こんにちは'}
    remarks {''}
    tag_ids { 'あいさつ' }
    type_id { 2 }
    association :user
  end
end
