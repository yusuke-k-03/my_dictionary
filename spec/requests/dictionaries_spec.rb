require 'rails_helper'

RSpec.describe "Dictionaries", type: :request do
  before do
    @dictionary = FactoryBot.create(:dictionary)
    @question = FactoryBot.create(:question)
    @user = FactoryBot.create(:user)
  end

  describe "GET #idex" do
    it 'indexアクションにリクエストすると正常にレスポンスが帰ってくる' do
       get root_path
       expect(response.status).to eq 200
    end
    it 'indexアクションにリクエストするとレスポンスに投稿されたquestionが存在する' do
      get root_path
      expect(response.body).to include @question.title
    end
  end

  describe "GET #show" do

    it 'トップページからマイページにリクエスト正常にレスポンスが帰ってくる'


    it 'マイページからdictionaryのshowアクションにリクエストすると正常にレスポンスが帰ってくる' do
     sign_in @user
     get dictionary_path(@dictionary)
    end

    it 'マイページからdictionaryのshowアクションにリクエストするとレスポンスに投稿されたdictionaryが存在する' do
    end

    it 'マイページのshowアクションにリクエストするとレスポンスに投稿したquesutionが存在する' do
    end

    it 'トップページからdictionaryのshowアクションにリクエストすると正常にレスポンスが帰ってくる' do
    end

    it 'トップページからdictionaryのshowアクションにリクエストするとレスポンスに投稿されたdictionaryが存在する' do
    end

  end
end
