# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::PromotionsTest < Onlyfansapi::Test::ResourceTest
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
      response => Onlyfansapi::Models::PromotionCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PromotionCreateResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::PromotionCreateResponse::Data]) | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.promotions.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PromotionListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PromotionListResponse::Meta | nil,
        data: Onlyfansapi::Models::PromotionListResponse::Data | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.promotions.delete("promotion_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PromotionDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PromotionDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::PromotionDeleteResponse::Data | nil
      }
    end
  end

  def test_stop_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.promotions.stop("promotion_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::PromotionStopResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::PromotionStopResponse::Meta | nil,
        data: Onlyfansapi::Models::PromotionStopResponse::Data | nil
      }
    end
  end
end
