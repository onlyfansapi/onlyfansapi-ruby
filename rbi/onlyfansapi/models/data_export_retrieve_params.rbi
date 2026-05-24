# typed: strong

module Onlyfansapi
  module Models
    class DataExportRetrieveParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::DataExportRetrieveParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :data_export_id

      # Number of minutes until the download URL expires. Min `1`, max `60`, default
      # `5`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :download_url_expires_in

      sig { params(download_url_expires_in: Integer).void }
      attr_writer :download_url_expires_in

      sig do
        params(
          data_export_id: String,
          download_url_expires_in: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        data_export_id:,
        # Number of minutes until the download URL expires. Min `1`, max `60`, default
        # `5`.
        download_url_expires_in: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            data_export_id: String,
            download_url_expires_in: Integer,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
