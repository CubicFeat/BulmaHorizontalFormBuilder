# BulmaHorizontalFormBuilder
Rails Form Helper to make dealing with Bulma horizontal forms **less tedious**

Instead of this:

```
<div class="field is-horizontal">
  <div class="field-label">
    <label class="label">Subject</label>
  </div>
  <div class="field-body">
    <div class="field">
      <div class="control">
        <input class="input">
      </div>
    </div>
  </div>
</div>
```
We can do this:

```
      <%= f.horizontal_form_element_wrapper(:subject) do %>
        <%= f.text_field :subject, { class: 'input' } %>
      <%end%>
```

Usage:

Place bulma_horizontal_form_builder.rb into your Rails App's app/helpers/ directory and then specify the form builder to use as below:

```
<%= form_for @example, builder: BulmaHorizontalFormBuilder do |f| %>

...form stuff...

<% end %>
```
