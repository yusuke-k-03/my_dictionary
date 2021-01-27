require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる時' do
      it '名前、Eメール、パスワード、確認用パスワードが入力されている時' do
        expect(@user).to be_valid
      end

      it 'パスワードと確認用が6文字以上である時' do
        @user.password = 'test11'
        @user.password_confirmation = 'test11'
        expect(@user).to be_valid
      end
    end

    context '新規登録できない時' do
      it '名前がからの時' do
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nameを入力してください")
      end

      it 'Eメールがからの時' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end

      it 'Eメールが重複している時' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")
      end

      it 'パスワードがからの時' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end

      it 'パスワードが記載されているが、確認用がからの時' do
        @user.password = 'test11'
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end

      it 'パスワードと確認用が違う内容を入力した時' do
        @user.password = 'test11'
        @user.password_confirmation = 'test22'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end

      it 'パスワードが5文字以下の時' do
        @user.password = 'test1'
        @user.password_confirmation = 'test1'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end
    end
  end
end
