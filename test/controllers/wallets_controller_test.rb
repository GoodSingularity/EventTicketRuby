require "test_helper"

class WalletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wallet = wallets(:one)
  end

  test "should get index" do
    get wallets_url
    assert_response :success
  end

  test "should get new" do
    get new_wallet_url
    assert_response :success
  end

  test "should create wallet" do
    assert_difference('Wallet.count') do
      post wallets_url, params: { wallet: { money: @wallet.money, user_id: @wallet.user_id } }
    end

    assert_redirected_to wallet_url(Wallet.last)
  end

  test "should show wallet" do
    get wallet_url(@wallet)
    assert_response :success
  end

  test "should get edit" do
    get edit_wallet_url(@wallet)
    assert_response :success
  end

  test "should update wallet" do
    patch wallet_url(@wallet), params: { wallet: { money: @wallet.money, user_id: @wallet.user_id } }
    assert_redirected_to wallet_url(@wallet)
  end

  test "should destroy wallet" do
    assert_difference('Wallet.count', -1) do
      delete wallet_url(@wallet)
    end

    assert_redirected_to wallets_url
  end
end
