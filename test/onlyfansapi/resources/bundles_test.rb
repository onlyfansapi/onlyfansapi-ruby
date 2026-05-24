# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::BundlesTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.bundles.create("acct_XXXXXXXXXXXXXXX", discount: 10, duration: 3)

    assert_pattern do
      response => Onlyfansapi::Models::BundleCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::BundleCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::BundleCreateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.bundles.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::BundleListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::BundleListResponse::Meta | nil,
        data: ^(Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::BundleListResponse::Data]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.bundles.delete("bundle_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfansapi::Models::BundleDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::BundleDeleteResponse::Meta | nil,
        data: Onlyfansapi::Models::BundleDeleteResponse::Data | nil
      }
    end
  end
end
