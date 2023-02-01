# AUTO GENERATED FILE - DO NOT EDIT

dashAutocomplete <- function(id=NULL, className=NULL, clearable=NULL, delay=NULL, disabled=NULL, hyperlink_root=NULL, hyperlinks=NULL, loading_state=NULL, multi=NULL, optionHeight=NULL, options=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, placeholder=NULL, search_value=NULL, searchable=NULL, style=NULL, value=NULL) {
    
    props <- list(id=id, className=className, clearable=clearable, delay=delay, disabled=disabled, hyperlink_root=hyperlink_root, hyperlinks=hyperlinks, loading_state=loading_state, multi=multi, optionHeight=optionHeight, options=options, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, placeholder=placeholder, search_value=search_value, searchable=searchable, style=style, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DashAutocomplete',
        namespace = 'dash_autocomplete',
        propNames = c('id', 'className', 'clearable', 'delay', 'disabled', 'hyperlink_root', 'hyperlinks', 'loading_state', 'multi', 'optionHeight', 'options', 'persisted_props', 'persistence', 'persistence_type', 'placeholder', 'search_value', 'searchable', 'style', 'value'),
        package = 'dashAutocomplete'
        )

    structure(component, class = c('dash_component', 'list'))
}
