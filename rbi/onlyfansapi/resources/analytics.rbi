# typed: strong

module Onlyfansapi
  module Resources
    class Analytics
      # APIs for retrieving financial analytics data
      sig { returns(Onlyfansapi::Resources::Analytics::Financial) }
      attr_reader :financial

      # APIs for retrieving summary analytics data
      sig { returns(Onlyfansapi::Resources::Analytics::Summary) }
      attr_reader :summary

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
