# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::PromotionsTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.promotions.create(
        "acct_XXXXXXXXXXXXXXX",
        discount: 10,
        expiration_days: 7,
        offer_limit: 10,
        type: :new
      )

    assert_pattern do
      response => Onlyfans::Models::PromotionCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PromotionCreateResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PromotionCreateResponse::Data]) | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.promotions.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PromotionListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PromotionListResponse::Meta | nil,
        data: Onlyfans::Models::PromotionListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.promotions.delete("promotion_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PromotionDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PromotionDeleteResponse::Meta | nil,
        data: Onlyfans::Models::PromotionDeleteResponse::Data | nil
      }
    end
  end

  def test_stop_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.promotions.stop("promotion_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::PromotionStopResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::PromotionStopResponse::Meta | nil,
        data: Onlyfans::Models::PromotionStopResponse::Data | nil
      }
    end
  end
end
