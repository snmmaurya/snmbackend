module ApiExceptions
  class BaseException < StandardError
    attr_reader :status, :code, :message

    ERROR_DESCRIPTION = Proc.new {|code, message| {status: "error | failure", code: code, message: message}}
    ERROR_CODE_MAP = {
      "InvalidRequestException" =>
        ERROR_DESCRIPTION.call(422, "Invalid Request"),
      "PurchaseError::ItemNotFound" =>
        ERROR_DESCRIPTION.call(4000, "item_id is required to make a purchase")
    }

    def initialize
      error_type = self.class.name.scan(/ApiExceptions::(.*)/).flatten.first
      ApiExceptions::BaseException::ERROR_CODE_MAP
        .fetch(error_type, {}).each do |attr, value|
          instance_variable_set("@#{attr}".to_sym, value)
      end
    end

    def to_json(*_args)
      out = {code: code, message: message, status: status}
      out.to_json
    end
  end
end