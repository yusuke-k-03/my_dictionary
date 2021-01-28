require 'rails_helper'

RSpec.describe Question, type: :model do
  before do
    @question = FactoryBot.build(:question)
  end

  describe 'questionの保存' do
    context 'questionが保存できる時' do
      it 'タイトル、カテゴリー（ー以外）、テキストがある時' do
        expect(@question).to be_valid
      end
    end

    context 'questionが保存できない時' do
      it 'タイトルがからの時' do
        @question.title = ''
        @question.valid?
        expect(@question.errors.full_messages).to include('タイトルを入力してください')
      end

      it 'カテゴリーが’ー’のままの時' do
        @question.category_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include('カテゴリーは1以外の値にしてください')
      end

      it 'テキストがからの時' do
        @question.text = ""
        @question.valid?
        expect(@question.errors.full_messages).to include('テキストを入力してください')
      end

    end
  end
end
