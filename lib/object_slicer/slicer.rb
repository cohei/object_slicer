module ObjectSlicer::Slicer
  def slice(*method_names, no_method_error: false)
    method_names.map(&:to_sym).each_with_object({}) do |method_name, hash|
      hash[method_name] = safe_send(self, method_name, error)
    end
  end

  private

  def safe_send(object, method_name, error)
    object.__send__ method_name
  rescue NoMethodError => e
    raise e if error
  end
end
