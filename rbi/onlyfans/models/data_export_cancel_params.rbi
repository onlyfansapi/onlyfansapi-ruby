# typed: strong

module Onlyfans
  module Models
    class DataExportCancelParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::DataExportCancelParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :data_export_id

      sig do
        params(
          data_export_id: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data_export_id:, request_options: {})
      end

      sig do
        override.returns(
          { data_export_id: String, request_options: Onlyfans::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
