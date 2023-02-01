% Auto-generated: do not edit by hand
\name{dashAutocomplete}

\alias{dashAutocomplete}

\title{DashAutocomplete component}

\description{
DashAutocompleteComponent A simplified select that enables user to use server-side filtering for options.
}

\usage{
dashAutocomplete(id=NULL, className=NULL, clearable=NULL, delay=NULL,
disabled=NULL, hyperlinks=NULL, loading_state=NULL,
multi=NULL, optionHeight=NULL, options=NULL,
persisted_props=NULL, persistence=NULL,
persistence_type=NULL, placeholder=NULL, search_value=NULL,
searchable=NULL, style=NULL, value=NULL)
}

\arguments{
\item{id}{The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{className}{className of the dropdown element}

\item{clearable}{Whether or not the dropdown is "clearable", that is, whether or
not a small "x" appears on the right of the dropdown that removes
the selected value.}

\item{delay}{Delay to use for updating select options. Use to reduce number of calls to external API for options.}

\item{disabled}{If true, this dropdown is disabled and the selection cannot be changed.}

\item{hyperlinks}{Enables hyperlinks, where the value is assumed to to be a link.}

\item{loading_state}{Object that holds the loading state object coming from dash-renderer}

\item{multi}{If true, the user can select multiple values}

\item{optionHeight}{height of each option. Can be increased when label lengths would wrap around}

\item{options}{An array of options {label: [string|number], value: [string|number]},
an optional disabled field can be used for each option}

\item{persisted_props}{Properties whose user interactions will persist after refreshing the
component or the page. Since only `value` is allowed this prop can
normally be ignored.}

\item{persistence}{Used to allow user interactions in this component to be persisted when
the component - or the page - is refreshed. If `persisted` is truthy and
hasn't changed from its previous value, a `value` that the user has
changed while using the app will keep that change, as long as
the new `value` also matches what was given originally.
Used in conjunction with `persistence_type`.}

\item{persistence_type}{Where persisted user changes will be stored:
memory: only kept in memory, reset on page refresh.
local: window.localStorage, data is kept after the browser quit.
session: window.sessionStorage, data is cleared once the browser quit.}

\item{placeholder}{The grey, default text shown when no option is selected}

\item{search_value}{The value typed in the DropDown for searching.}

\item{searchable}{Whether to enable the searching feature or not}

\item{style}{Defines CSS styles which will override styles previously set.}

\item{value}{The value of the input. If `multi` is false (the default)
then value is just a string that corresponds to the values
provided in the `options` property. If `multi` is true, then
multiple values can be selected at once, and `value` is an
array of items with values corresponding to those in the
`options` prop.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

