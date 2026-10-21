# typed: strong

module Onlyfans
  module Models
    class SmartLinkListConversionsResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::SmartLinkListConversionsResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfans::Models::SmartLinkListConversionsResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfans::Models::SmartLinkListConversionsResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfans::Models::SmartLinkListConversionsResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfans::Models::SmartLinkListConversionsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfans::Models::SmartLinkListConversionsResponse::Meta::OrHash,
          data: Onlyfans::Models::SmartLinkListConversionsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::SmartLinkListConversionsResponse::Meta,
            data: Onlyfans::Models::SmartLinkListConversionsResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SmartLinkListConversionsResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Credits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Credits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Cache,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_cached

          sig { params(is_cached: T::Boolean).void }
          attr_writer :is_cached

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig do
            params(is_cached: T::Boolean, note: String).returns(
              T.attached_class
            )
          end
          def self.new(is_cached: nil, note: nil)
          end

          sig { override.returns({ is_cached: T::Boolean, note: String }) }
          def to_hash
          end
        end

        class Credits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Credits,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :balance

          sig { params(balance: Integer).void }
          attr_writer :balance

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig { returns(T.nilable(Integer)) }
          attr_reader :used

          sig { params(used: Integer).void }
          attr_writer :used

          sig do
            params(balance: Integer, note: String, used: Integer).returns(
              T.attached_class
            )
          end
          def self.new(balance: nil, note: nil, used: nil)
          end

          sig do
            override.returns({ balance: Integer, note: String, used: Integer })
          end
          def to_hash
          end
        end
      end

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SmartLinkListConversionsResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Chart
              ]
            )
          )
        end
        attr_reader :chart

        sig do
          params(
            chart:
              T::Array[
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Chart::OrHash
              ]
          ).void
        end
        attr_writer :chart

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkListConversionsResponse::Data::Filters
            )
          )
        end
        attr_reader :filters

        sig do
          params(
            filters:
              Onlyfans::Models::SmartLinkListConversionsResponse::Data::Filters::OrHash
          ).void
        end
        attr_writer :filters

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row
              ]
            )
          )
        end
        attr_reader :rows

        sig do
          params(
            rows:
              T::Array[
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::OrHash
              ]
          ).void
        end
        attr_writer :rows

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkListConversionsResponse::Data::Summary
            )
          )
        end
        attr_reader :summary

        sig do
          params(
            summary:
              Onlyfans::Models::SmartLinkListConversionsResponse::Data::Summary::OrHash
          ).void
        end
        attr_writer :summary

        sig do
          params(
            chart:
              T::Array[
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Chart::OrHash
              ],
            filters:
              Onlyfans::Models::SmartLinkListConversionsResponse::Data::Filters::OrHash,
            rows:
              T::Array[
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::OrHash
              ],
            summary:
              Onlyfans::Models::SmartLinkListConversionsResponse::Data::Summary::OrHash
          ).returns(T.attached_class)
        end
        def self.new(chart: nil, filters: nil, rows: nil, summary: nil)
        end

        sig do
          override.returns(
            {
              chart:
                T::Array[
                  Onlyfans::Models::SmartLinkListConversionsResponse::Data::Chart
                ],
              filters:
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Filters,
              rows:
                T::Array[
                  Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row
                ],
              summary:
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Summary
            }
          )
        end
        def to_hash
        end

        class Chart < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Chart,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :conversions

          sig { params(conversions: Integer).void }
          attr_writer :conversions

          sig { returns(T.nilable(String)) }
          attr_reader :timestamp

          sig { params(timestamp: String).void }
          attr_writer :timestamp

          sig do
            params(conversions: Integer, timestamp: String).returns(
              T.attached_class
            )
          end
          def self.new(conversions: nil, timestamp: nil)
          end

          sig { override.returns({ conversions: Integer, timestamp: String }) }
          def to_hash
          end
        end

        class Filters < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Filters,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :conversion_type

          sig { params(conversion_type: String).void }
          attr_writer :conversion_type

          sig { returns(T.nilable(String)) }
          attr_reader :date_end

          sig { params(date_end: String).void }
          attr_writer :date_end

          sig { returns(T.nilable(String)) }
          attr_reader :date_start

          sig { params(date_start: String).void }
          attr_writer :date_start

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_bots

          sig { params(include_bots: T::Boolean).void }
          attr_writer :include_bots

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_duplicates

          sig { params(include_duplicates: T::Boolean).void }
          attr_writer :include_duplicates

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig { returns(T.nilable(Integer)) }
          attr_reader :offset

          sig { params(offset: Integer).void }
          attr_writer :offset

          sig do
            params(
              conversion_type: String,
              date_end: String,
              date_start: String,
              include_bots: T::Boolean,
              include_duplicates: T::Boolean,
              limit: Integer,
              offset: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            conversion_type: nil,
            date_end: nil,
            date_start: nil,
            include_bots: nil,
            include_duplicates: nil,
            limit: nil,
            offset: nil
          )
          end

          sig do
            override.returns(
              {
                conversion_type: String,
                date_end: String,
                date_start: String,
                include_bots: T::Boolean,
                include_duplicates: T::Boolean,
                limit: Integer,
                offset: Integer
              }
            )
          end
          def to_hash
          end
        end

        class Row < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(Float)) }
          attr_reader :amount_gross

          sig { params(amount_gross: Float).void }
          attr_writer :amount_gross

          sig { returns(T.nilable(Float)) }
          attr_reader :amount_net

          sig { params(amount_net: Float).void }
          attr_writer :amount_net

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Click
              )
            )
          end
          attr_reader :click

          sig do
            params(
              click:
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Click::OrHash
            ).void
          end
          attr_writer :click

          sig { returns(T.nilable(String)) }
          attr_reader :conversion_at

          sig { params(conversion_at: String).void }
          attr_writer :conversion_at

          sig { returns(T.nilable(String)) }
          attr_reader :conversion_type

          sig { params(conversion_type: String).void }
          attr_writer :conversion_type

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Fan
              )
            )
          end
          attr_reader :fan

          sig do
            params(
              fan:
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Fan::OrHash
            ).void
          end
          attr_writer :fan

          sig { returns(T.nilable(String)) }
          attr_reader :fan_onlyfans_id

          sig { params(fan_onlyfans_id: String).void }
          attr_writer :fan_onlyfans_id

          sig do
            params(
              id: String,
              amount_gross: Float,
              amount_net: Float,
              click:
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Click::OrHash,
              conversion_at: String,
              conversion_type: String,
              fan:
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Fan::OrHash,
              fan_onlyfans_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            amount_gross: nil,
            amount_net: nil,
            click: nil,
            conversion_at: nil,
            conversion_type: nil,
            fan: nil,
            fan_onlyfans_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount_gross: Float,
                amount_net: Float,
                click:
                  Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Click,
                conversion_at: String,
                conversion_type: String,
                fan:
                  Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Fan,
                fan_onlyfans_id: String
              }
            )
          end
          def to_hash
          end

          class Click < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Click,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :aff_s1

            sig { params(aff_s1: String).void }
            attr_writer :aff_s1

            sig { returns(T.nilable(String)) }
            attr_accessor :aff_s2

            sig { returns(T.nilable(String)) }
            attr_accessor :aff_s3

            sig { returns(T.nilable(String)) }
            attr_accessor :aff_s4

            sig { returns(T.nilable(String)) }
            attr_accessor :aff_s5

            sig { returns(T.nilable(String)) }
            attr_reader :browser_device_type

            sig { params(browser_device_type: String).void }
            attr_writer :browser_device_type

            sig { returns(T.nilable(String)) }
            attr_reader :browser_family

            sig { params(browser_family: String).void }
            attr_writer :browser_family

            sig { returns(T.nilable(String)) }
            attr_reader :browser_name

            sig { params(browser_name: String).void }
            attr_writer :browser_name

            sig { returns(T.nilable(String)) }
            attr_reader :browser_platform

            sig { params(browser_platform: String).void }
            attr_writer :browser_platform

            sig { returns(T.nilable(String)) }
            attr_reader :country_code

            sig { params(country_code: String).void }
            attr_writer :country_code

            sig { returns(T.nilable(String)) }
            attr_reader :created_at

            sig { params(created_at: String).void }
            attr_writer :created_at

            sig { returns(T.nilable(String)) }
            attr_reader :external_click_id

            sig { params(external_click_id: String).void }
            attr_writer :external_click_id

            sig { returns(T.nilable(String)) }
            attr_accessor :fbclid

            sig { returns(T.nilable(String)) }
            attr_accessor :gbraid

            sig { returns(T.nilable(String)) }
            attr_reader :gclid

            sig { params(gclid: String).void }
            attr_writer :gclid

            sig { returns(T.nilable(Integer)) }
            attr_reader :gross_clicks

            sig { params(gross_clicks: Integer).void }
            attr_writer :gross_clicks

            sig { returns(T.nilable(String)) }
            attr_reader :ip_address

            sig { params(ip_address: String).void }
            attr_writer :ip_address

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_bot

            sig { params(is_bot: T::Boolean).void }
            attr_writer :is_bot

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_duplicate

            sig { params(is_duplicate: T::Boolean).void }
            attr_writer :is_duplicate

            sig { returns(T.nilable(String)) }
            attr_reader :referrer

            sig { params(referrer: String).void }
            attr_writer :referrer

            sig { returns(T.nilable(String)) }
            attr_accessor :sccid

            sig { returns(T.nilable(String)) }
            attr_reader :ttclid

            sig { params(ttclid: String).void }
            attr_writer :ttclid

            sig { returns(T.nilable(String)) }
            attr_reader :user_agent

            sig { params(user_agent: String).void }
            attr_writer :user_agent

            sig { returns(T.nilable(String)) }
            attr_reader :utm_campaign

            sig { params(utm_campaign: String).void }
            attr_writer :utm_campaign

            sig { returns(T.nilable(String)) }
            attr_reader :utm_content

            sig { params(utm_content: String).void }
            attr_writer :utm_content

            sig { returns(T.nilable(String)) }
            attr_reader :utm_medium

            sig { params(utm_medium: String).void }
            attr_writer :utm_medium

            sig { returns(T.nilable(String)) }
            attr_reader :utm_source

            sig { params(utm_source: String).void }
            attr_writer :utm_source

            sig { returns(T.nilable(String)) }
            attr_reader :utm_term

            sig { params(utm_term: String).void }
            attr_writer :utm_term

            sig { returns(T.nilable(String)) }
            attr_accessor :wbraid

            sig do
              params(
                id: String,
                aff_s1: String,
                aff_s2: T.nilable(String),
                aff_s3: T.nilable(String),
                aff_s4: T.nilable(String),
                aff_s5: T.nilable(String),
                browser_device_type: String,
                browser_family: String,
                browser_name: String,
                browser_platform: String,
                country_code: String,
                created_at: String,
                external_click_id: String,
                fbclid: T.nilable(String),
                gbraid: T.nilable(String),
                gclid: String,
                gross_clicks: Integer,
                ip_address: String,
                is_bot: T::Boolean,
                is_duplicate: T::Boolean,
                referrer: String,
                sccid: T.nilable(String),
                ttclid: String,
                user_agent: String,
                utm_campaign: String,
                utm_content: String,
                utm_medium: String,
                utm_source: String,
                utm_term: String,
                wbraid: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              aff_s1: nil,
              aff_s2: nil,
              aff_s3: nil,
              aff_s4: nil,
              aff_s5: nil,
              browser_device_type: nil,
              browser_family: nil,
              browser_name: nil,
              browser_platform: nil,
              country_code: nil,
              created_at: nil,
              external_click_id: nil,
              fbclid: nil,
              gbraid: nil,
              gclid: nil,
              gross_clicks: nil,
              ip_address: nil,
              is_bot: nil,
              is_duplicate: nil,
              referrer: nil,
              sccid: nil,
              ttclid: nil,
              user_agent: nil,
              utm_campaign: nil,
              utm_content: nil,
              utm_medium: nil,
              utm_source: nil,
              utm_term: nil,
              wbraid: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  aff_s1: String,
                  aff_s2: T.nilable(String),
                  aff_s3: T.nilable(String),
                  aff_s4: T.nilable(String),
                  aff_s5: T.nilable(String),
                  browser_device_type: String,
                  browser_family: String,
                  browser_name: String,
                  browser_platform: String,
                  country_code: String,
                  created_at: String,
                  external_click_id: String,
                  fbclid: T.nilable(String),
                  gbraid: T.nilable(String),
                  gclid: String,
                  gross_clicks: Integer,
                  ip_address: String,
                  is_bot: T::Boolean,
                  is_duplicate: T::Boolean,
                  referrer: String,
                  sccid: T.nilable(String),
                  ttclid: String,
                  user_agent: String,
                  utm_campaign: String,
                  utm_content: String,
                  utm_medium: String,
                  utm_source: String,
                  utm_term: String,
                  wbraid: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class Fan < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Fan,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :avatar_url

            sig { params(avatar_url: String).void }
            attr_writer :avatar_url

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :onlyfans_id

            sig { params(onlyfans_id: String).void }
            attr_writer :onlyfans_id

            sig { returns(T.nilable(String)) }
            attr_reader :onlyfans_url

            sig { params(onlyfans_url: String).void }
            attr_writer :onlyfans_url

            sig { returns(T.nilable(String)) }
            attr_reader :username

            sig { params(username: String).void }
            attr_writer :username

            sig do
              params(
                avatar_url: String,
                name: String,
                onlyfans_id: String,
                onlyfans_url: String,
                username: String
              ).returns(T.attached_class)
            end
            def self.new(
              avatar_url: nil,
              name: nil,
              onlyfans_id: nil,
              onlyfans_url: nil,
              username: nil
            )
            end

            sig do
              override.returns(
                {
                  avatar_url: String,
                  name: String,
                  onlyfans_id: String,
                  onlyfans_url: String,
                  username: String
                }
              )
            end
            def to_hash
            end
          end
        end

        class Summary < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkListConversionsResponse::Data::Summary,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :conversions_total

          sig { params(conversions_total: Integer).void }
          attr_writer :conversions_total

          sig { returns(T.nilable(Float)) }
          attr_reader :revenue_total

          sig { params(revenue_total: Float).void }
          attr_writer :revenue_total

          sig { returns(T.nilable(Integer)) }
          attr_reader :subscribers_total

          sig { params(subscribers_total: Integer).void }
          attr_writer :subscribers_total

          sig do
            params(
              conversions_total: Integer,
              revenue_total: Float,
              subscribers_total: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            conversions_total: nil,
            revenue_total: nil,
            subscribers_total: nil
          )
          end

          sig do
            override.returns(
              {
                conversions_total: Integer,
                revenue_total: Float,
                subscribers_total: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
