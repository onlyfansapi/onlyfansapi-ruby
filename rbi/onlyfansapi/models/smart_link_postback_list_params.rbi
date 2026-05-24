# typed: strong

module Onlyfansapi
  module Models
    class SmartLinkPostbackListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::SmartLinkPostbackListParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        params(request_options: Onlyfansapi::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Onlyfansapi::RequestOptions }) }
      def to_hash
      end
    end
  end
end
