require 'rails_helper'

RSpec.describe Text, type: :model do
  before do
    @text = FactoryBot.build(:text)
  end

  describe '文章の保存' do
    context '文章が保存できる場合' do
      it 'sentenceとtranslate、tagとtypeがあれば保存できる' do
      expect(@text).to be_valid
    end
  end
    context '文章が保存できない場合' do
      it 'テキストが空では投稿できない' do
      end     
      it 'ユーザーが紐付いていなければ投稿できない' do
      end
    end
  end
end
