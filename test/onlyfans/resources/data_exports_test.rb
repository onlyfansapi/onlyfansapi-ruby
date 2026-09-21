# frozen_string_literal: true

require_relative "../test_helper"

class Onlyfans::Test::Resources::DataExportsTest < Onlyfans::Test::ResourceTest
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
      response => Onlyfans::Models::DataExportCreateResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::DataExportCreateResponse::Meta | nil,
        data: Onlyfans::Models::DataExportCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @only_fans_api.data_exports.retrieve("data_export_abc123")

    assert_pattern do
      response => Onlyfans::Models::DataExportRetrieveResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::DataExportRetrieveResponse::Meta | nil,
        data: Onlyfans::Models::DataExportRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @only_fans_api.data_exports.list

    assert_pattern do
      response => Onlyfans::Models::DataExportListResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::DataExportListResponse::Meta | nil,
        data: Onlyfans::Models::DataExportListResponse::Data | nil
      }
    end
  end

  def test_cancel
    skip("Mock server tests are disabled")

    response = @only_fans_api.data_exports.cancel("data_export_abc123")

    assert_pattern do
      response => Onlyfans::Models::DataExportCancelResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::DataExportCancelResponse::Meta | nil,
        data: Onlyfans::Models::DataExportCancelResponse::Data | nil
      }
    end
  end

  def test_retry_
    skip("Mock server tests are disabled")

    response = @only_fans_api.data_exports.retry_("data_export_abc123")

    assert_pattern do
      response => Onlyfans::Models::DataExportRetryResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::DataExportRetryResponse::Meta | nil,
        data: Onlyfans::Models::DataExportRetryResponse::Data | nil
      }
    end
  end

  def test_start
    skip("Mock server tests are disabled")

    response = @only_fans_api.data_exports.start("data_export_abc123")

    assert_pattern do
      response => Onlyfans::Models::DataExportStartResponse
    end

    assert_pattern do
      response => {
        _meta: Onlyfans::Models::DataExportStartResponse::Meta | nil,
        data: Onlyfans::Models::DataExportStartResponse::Data | nil
      }
    end
  end
end
