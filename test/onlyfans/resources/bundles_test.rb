# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::BundlesTest < Onlyfans::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.bundles.create("acct_XXXXXXXXXXXXXXX", discount: 10, duration: 3)

    assert_pattern do
      response => Onlyfans::Models::BundleCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::BundleCreateResponse::Meta | nil,
        data: Onlyfans::Models::BundleCreateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.bundles.list("acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::BundleListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::BundleListResponse::Meta | nil,
        data: ^(Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::BundleListResponse::Data]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @only_fans_api.bundles.delete("bundle_id", account: "acct_XXXXXXXXXXXXXXX")

    assert_pattern do
      response => Onlyfans::Models::BundleDeleteResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::BundleDeleteResponse::Meta | nil,
        data: Onlyfans::Models::BundleDeleteResponse::Data | nil
      }
    end
  end
end
