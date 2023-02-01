"""Custom component"""
import os
import time
from typing import Dict, List

import dash
import geopy.geocoders
from dash import dcc, html
from dash.dependencies import Input, Output, State
from dash.exceptions import PreventUpdate

import dash_autocomplete

MAPBOX_API_TOKEN = os.environ["MAPBOX_KEY"]

geocoder = geopy.geocoders.MapBox(MAPBOX_API_TOKEN)

app = dash.Dash(__name__)

app.layout = html.Div(
    [
        html.Div(id="dd-output-container"),
        html.Div(id="dd-search-container"),
        dash_autocomplete.DashAutocomplete(
            id="address-search",
            placeholder="Search address...",
            delay=1000,
            hyperlinks=True,
            hyperlink_root="root",
        ),
        dcc.Store(id="last-search-at"),
    ]
)


@app.callback(
    Output("dd-output-container", "children"), Input("address-search", "value")
)
def update_output(value):
    print(value)
    return 'You have selected "{}"'.format(value)


@app.callback(
    Output("dd-search-container", "children"),
    Input("address-search", "search_value"),
)
def test_search(search_value):
    print(search_value)
    return 'Searching "{}"'.format(search_value)


@app.callback(
    Output("last-search-at", "data"),
    Input("address-search", "search_value"),
    State("last-search-at", "data"),
)
def update_last_search_at(search_value, data):
    if data is None:
        data = {}
    data["last_search_at"] = time.time()
    return data


@app.callback(
    Output("address-search", "options"),
    Input("last-search-at", "data"),
    State("address-search", "search_value"),
)
def update_location_options(data, search_value: str) -> List[Dict[str, str]]:
    """Updates location options."""
    if (
        search_value is None
        or search_value == ""
        # or time.time() - data["last_search_at"] <= 1
    ):
        raise PreventUpdate
    print(f"Running at {data['last_search_at']} with value {search_value}")

    locations = geocoder.geocode(search_value, exactly_one=False)

    print(
        [
            {
                "label": location.address,
                "value": ",".join([str(location.longitude), str(location.latitude)]),
            }
            for location in locations
        ]
    )

    if locations is None:
        return []

    return [
        {
            "label": location.address,
            "value": ",".join([str(location.longitude), str(location.latitude)]),
        }
        for location in locations
    ]


if __name__ == "__main__":
    app.run_server(debug=True)
