# typed: strong

module Onlyfansapi
  module Models
    module SavedForLater
      module Messages
        class SettingEnableOrUpdateAutomaticMessagingParams < Onlyfansapi::Internal::Type::BaseModel
          extend Onlyfansapi::Internal::Type::RequestParameters::Converter
          include Onlyfansapi::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account

          # The automatic messaging interval (in hours)
          sig do
            returns(
              Onlyfansapi::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::OrInteger
            )
          end
          attr_accessor :period

          sig do
            params(
              account: String,
              period:
                Onlyfansapi::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::OrInteger,
              request_options: Onlyfansapi::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account:,
            # The automatic messaging interval (in hours)
            period:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account: String,
                period:
                  Onlyfansapi::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::OrInteger,
                request_options: Onlyfansapi::RequestOptions
              }
            )
          end
          def to_hash
          end

          # The automatic messaging interval (in hours)
          module Period
            extend Onlyfansapi::Internal::Type::Enum

            TaggedInteger =
              T.type_alias do
                T.all(
                  Integer,
                  Onlyfansapi::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period
                )
              end
            OrInteger = T.type_alias { Integer }

            PERIOD_6 =
              T.let(
                6,
                Onlyfansapi::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::TaggedInteger
              )
            PERIOD_12 =
              T.let(
                12,
                Onlyfansapi::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::TaggedInteger
              )
            PERIOD_24 =
              T.let(
                24,
                Onlyfansapi::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::TaggedInteger
              )
            PERIOD_48 =
              T.let(
                48,
                Onlyfansapi::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::TaggedInteger
              )

            sig do
              override.returns(
                T::Array[
                  Onlyfansapi::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::TaggedInteger
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
