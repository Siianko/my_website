::Haml::TempleEngine.define_options context: nil
::HamlPatch ||= Module.new {
  # https://github.com/middleman/middleman/commit/02f95aa43980aac82455228aede681daf4fbb65c
  def evaluate(scope, locals, &block)
    options = {}.merge!(@options).merge!(filename: eval_file, line: line, context: @context || scope)
    if options.include?(:outvar)
      options[:buffer] = options.delete(:outvar)
      options[:save_buffer] = true
    end
    @engine = ::Haml::Engine.new(data, options)
    output = @engine.render(scope, locals, &block)
    output
  end
}
p patching_haml: ::HamlPatch

::Middleman::Renderers::HamlTemplate.prepend ::HamlPatch