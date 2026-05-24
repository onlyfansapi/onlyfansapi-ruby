# typed: strong

module Onlyfansapi
  module Models
    module SavedForLater
      module Posts
        class SettingEnableOrUpdateAutomaticPostingParams < Onlyfansapi::Internal::Type::BaseModel
          extend Onlyfansapi::Internal::Type::RequestParameters::Converter
          include Onlyfansapi::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account

          # The automatic posting interval (in hours)
          sig do
            returns(
              Onlyfansapi::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::OrInteger
            )
          end
          attr_accessor :period

          sig do
            params(
              account: String,
              period:
                Onlyfansapi::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::OrInteger,
              request_options: Onlyfansapi::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account:,
            # The automatic posting interval (in hours)
            period:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account: String,
                period:
                  Onlyfansapi::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::OrInteger,
                request_options: Onlyfansapi::RequestOptions
              }
            )
          end
          def to_hash
          end

          # The automatic posting interval (in hours)
          module Period
            extend Onlyfansapi::Internal::Type::Enum

            TaggedInteger =
              T.type_alias do
                T.all(
                  Integer,
                  Onlyfansapi::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period
                )
              end
            OrInteger = T.type_alias { Integer }

            PERIOD_6 =
              T.let(
                6,
                Onlyfansapi::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::TaggedInteger
              )
            PERIOD_12 =
              T.let(
                12,
                Onlyfansapi::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::TaggedInteger
              )
            PERIOD_24 =
              T.let(
                24,
                Onlyfansapi::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::TaggedInteger
              )
            PERIOD_48 =
              T.let(
                48,
                Onlyfansapi::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::TaggedInteger
              )

            sig do
              override.returns(
                T::Array[
                  Onlyfansapi::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::TaggedInteger
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
