"""
This file defines two useful high-level abstractions to build Gradio apps: Interface and TabbedInterface.
"""

from __future__ import annotations

from collections.abc import Sequence

import gradio as gr
from gradio.blocks import Blocks
from gradio.layouts import Tab, Tabs
from gradio.themes import ThemeClass as Theme
from gradio_client.documentation import document


@document()
class TabbedInterface(Blocks):
    """
    A TabbedInterface is created by providing a list of Interfaces or Blocks, each of which gets
    rendered in a separate tab. Only the components from the Interface/Blocks will be rendered in the tab.
    Certain high-level attributes of the Blocks (e.g. custom `css`, `js`, and `head` attributes) will not be loaded.

    Demos: tabbed_interface_lite
    """

    def __init__(
        self,
        interface_list: Sequence[Blocks],
        tab_names: list[str] | None = None,
        title: str | None = None,
        theme: Theme | str | None = None,
        analytics_enabled: bool | None = None,
        css: str | None = None,
        js: str | None = None,
        head: str | None = None,
    ):
        """
        Parameters:
            interface_list: A list of Interfaces (or Blocks) to be rendered in the tabs.
            tab_names: A list of tab names. If None, the tab names will be "Tab 1", "Tab 2", etc.
            title: The tab title to display when this demo is opened in a browser window.
            theme: A Theme object or a string representing a theme. If a string, will look for a built-in theme with that name (e.g. "soft" or "default"), or will attempt to load a theme from the Hugging Face Hub (e.g. "gradio/monochrome"). If None, will use the Default theme.
            analytics_enabled: Whether to allow basic telemetry. If None, will use GRADIO_ANALYTICS_ENABLED environment variable or default to True.
            css: Custom css as a string or path to a css file. This css will be included in the demo webpage.
            js: Custom js as a string or path to a js file. The custom js should in the form of a single js function. This function will automatically be executed when the page loads. For more flexibility, use the head parameter to insert js inside <script> tags.
            head: Custom html to insert into the head of the demo webpage. This can be used to add custom meta tags, multiple scripts, stylesheets, etc. to the page.
        Returns:
            a Gradio Tabbed Interface for the given interfaces
        """
        super().__init__(
            title="Synthetic Data Generator",
            theme=theme,
            analytics_enabled=analytics_enabled,
            mode="tabbed_interface",
            css=css,
            js=js,
            head=head,
        )
        if tab_names is None:
            tab_names = [f"Tab {i}" for i in range(len(interface_list))]
        with self:
            h3 = "<div style='text-align: center;'><h2>Build datasets using natural language</h2></div>"
            if title:
                gr.HTML(value=title + h3)
            gr.LoginButton(value="Sign in", variant="primary", elem_id="sign_in_button")
            with Tabs():
                for interface, tab_name in zip(interface_list, tab_names, strict=False):
                    with Tab(label=tab_name):
                        interface.render()
