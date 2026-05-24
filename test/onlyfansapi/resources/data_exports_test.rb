# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfansapi::Test::Resources::DataExportsTest < Onlyfansapi::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @only_fans_api.data_exports.create(
        end_date: "2024-12-31T23:59:59Z",
        file_type: :csv,
        start_date: "2024-01-01T00:00:00Z",
        type: :transactions
      )

    assert_pattern do
      response => Onlyfansapi::Models::DataExportCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::DataExportCreateResponse::Meta | nil,
        data: Onlyfansapi::Models::DataExportCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.data_exports.retrieve("data_export_abc123")

    assert_pattern do
      response => Onlyfansapi::Models::DataExportRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::DataExportRetrieveResponse::Meta | nil,
        data: Onlyfansapi::Models::DataExportRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.data_exports.list

    assert_pattern do
      response => Onlyfansapi::Models::DataExportListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::DataExportListResponse::Meta | nil,
        data: Onlyfansapi::Models::DataExportListResponse::Data | nil
      }
    end
  end

  def test_cancel
    skip("Mock server tests are disabled")

    response = @only_fans_api.data_exports.cancel("data_export_abc123")

    assert_pattern do
      response => Onlyfansapi::Models::DataExportCancelResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::DataExportCancelResponse::Meta | nil,
        data: Onlyfansapi::Models::DataExportCancelResponse::Data | nil
      }
    end
  end

  def test_retry_
    skip("Mock server tests are disabled")

    response = @only_fans_api.data_exports.retry_("data_export_abc123")

    assert_pattern do
      response => Onlyfansapi::Models::DataExportRetryResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::DataExportRetryResponse::Meta | nil,
        data: Onlyfansapi::Models::DataExportRetryResponse::Data | nil
      }
    end
  end

  def test_start
    skip("Mock server tests are disabled")

    response = @only_fans_api.data_exports.start("data_export_abc123")

    assert_pattern do
      response => Onlyfansapi::Models::DataExportStartResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfansapi::Models::DataExportStartResponse::Meta | nil,
        data: Onlyfansapi::Models::DataExportStartResponse::Data | nil
      }
    end
  end
end
