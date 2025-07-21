


# | ----------------------------------------------  CITIZENS EDITOR | CUSTOM DIALOG INVENTORY  ---------------------------------------------- | #



citizens_editor_gui_select:
    ##################################################
    # | ---  |       inventory script       |  --- | #
    ##################################################
    type: inventory
    debug: true
    inventory: CHEST
    title: Select Title Placeholder
    gui: false
    definitions:
        corner-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[corner-fill]||white_stained_glass_pane>].with[display=<&d> <empty>]>
        edge-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[edge-fill]||purple_stained_glass_pane>].with[display=<&d> <empty>]>
        green-fill: <item[green_stained_glass_pane].with[display=<&d> <empty>]>
        red-fill: <item[red_stained_glass_pane].with[display=<&d> <empty>]>
        confirm-dialog: <item[player_head].with_flag[gui-button:confirm].with[display=<&a><&l>Confirm;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.confirm-button]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        deny-dialog: <item[player_head].with_flag[gui-button:deny].with[display=<&c><&l>Deny;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.deny-button]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
    slots:
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []



# | ------------------------------------------------------------------------------------------------------------------------------ | #


