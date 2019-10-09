class BulmaHorizontalFormBuilder < ActionView::Helpers::FormBuilder

  def horizontal_form_element_wrapper(name, &block)
    @template.content_tag(:div, { class: 'field is-horizontal'}) do
      @template.content_tag(:div, {class: 'field-label'}) do
         @template.label(name,name, class: 'label')
      end + ## NEED a + to string multiple together inside a 'do'

    @template.content_tag(:div, {class: 'field-body'}) do
      @template.content_tag(:div, {class: 'field'}) do
        @template.content_tag(:div, {class: 'control'}) do
          block.call

        end
      end
    end
    end
  end

  def horizontal_select_wrapper(name, &block)
    horizontal_form_element_wrapper(name) do
        @template.content_tag(:div,{class: 'select is-fullwidth'}) do
          block.call
        end
    end
  end


end
