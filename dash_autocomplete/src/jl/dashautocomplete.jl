# AUTO GENERATED FILE - DO NOT EDIT

export dashautocomplete

"""
    dashautocomplete(;kwargs...)

A DashAutocomplete component.
DashAutocompleteComponent
A simplified select that enables user to use server-side filtering for options.
Keyword arguments:
- `id` (optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `className` (optional): className of the dropdown element
- `clearable` (optional): Whether or not the dropdown is "clearable", that is, whether or
not a small "x" appears on the right of the dropdown that removes
the selected value.
- `delay` (optional): Delay to use for updating select options. Use to reduce number of calls to external API for options.
- `disabled` (optional): If true, this dropdown is disabled and the selection cannot be changed.
- `hyperlink_root` (optional): Root to prepend to hyperlinks
- `hyperlinks` (optional): Enables hyperlinks, where the value is assumed to to be a link.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer
- `multi` (optional): If true, the user can select multiple values
- `optionHeight` (optional): height of each option. Can be increased when label lengths would wrap around
- `options` (optional): An array of options {label: [string|number], value: [string|number]},
an optional disabled field can be used for each option
- `persisted_props` (optional): Properties whose user interactions will persist after refreshing the
component or the page. Since only `value` is allowed this prop can
normally be ignored.
- `persistence` (optional): Used to allow user interactions in this component to be persisted when
the component - or the page - is refreshed. If `persisted` is truthy and
hasn't changed from its previous value, a `value` that the user has
changed while using the app will keep that change, as long as
the new `value` also matches what was given originally.
Used in conjunction with `persistence_type`.
- `persistence_type` (optional): Where persisted user changes will be stored:
memory: only kept in memory, reset on page refresh.
local: window.localStorage, data is kept after the browser quit.
session: window.sessionStorage, data is cleared once the browser quit.
- `placeholder` (optional): The grey, default text shown when no option is selected
- `search_value` (optional): The value typed in the DropDown for searching.
- `searchable` (optional): Whether to enable the searching feature or not
- `setProps` (optional): Dash-assigned callback that gets fired when the input changes
- `style` (optional): Defines CSS styles which will override styles previously set.
- `value` (optional): The value of the input. If `multi` is false (the default)
then value is just a string that corresponds to the values
provided in the `options` property. If `multi` is true, then
multiple values can be selected at once, and `value` is an
array of items with values corresponding to those in the
`options` prop.
"""
function dashautocomplete(; kwargs...)
        available_props = Symbol[:id, :className, :clearable, :delay, :disabled, :hyperlink_root, :hyperlinks, :loading_state, :multi, :optionHeight, :options, :persisted_props, :persistence, :persistence_type, :placeholder, :search_value, :searchable, :style, :value]
        wild_props = Symbol[]
        return Component("dashautocomplete", "DashAutocomplete", "dash_autocomplete", available_props, wild_props; kwargs...)
end

