require 'rails_helper'

RSpec.describe Dictionary, type: :model do
  before do
    @dictionary = FactoryBot.build(:dictionary)
  end

  describe 'dictionaryの保存' do
    context 'dictionaryが保存できる時' do
      it 'タイトル、カテゴリー（ー以外）、テキストがある時' do
        expect(@dictionary).to be_valid
      end
    end

    context 'dictionaryが保存できない時' do
      it 'タイトルがからの時' do
        @dictionary.title = ''
        @dictionary.valid?
       
        expect(@dictionary.errors.full_messages).to include('タイトルを入力してください')
      end

      it 'カテゴリーが’ー’のままの時' do
        @dictionary.category_id = 1
        @dictionary.valid?
        expect(@dictionary.errors.full_messages).to include('カテゴリーは1以外の値にしてください')
      end

      it 'テキストがからの時' do
        @dictionary.text = ""
        @dictionary.valid?
        expect(@dictionary.errors.full_messages).to include('テキストを入力してください')
      end

    end
  end
end
