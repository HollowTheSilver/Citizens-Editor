


# | ----------------------------------------------  CITIZENS EDITOR | ROOT INVENTORY  ---------------------------------------------- | #



citizens_editor_gui_main:
    ##################################################
    # | ---  |       inventory script       |  --- | #
    ##################################################
    type: inventory
    debug: false
    inventory: CHEST
    title: <server.flag[citizens_editor.settings.interface.settings.gui-titles.main-menu].parse_color>
    gui: true
    data:
        root: null
    definitions:
        placeholder: <item[structure_void].with[display=<&d><&l>Placeholder]>
        corner-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.corner-fill]||white_stained_glass_pane>].with[display=<&d> <empty>]>
        edge-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.edge-fill]||purple_stained_glass_pane>].with[display=<&d> <empty>]>
        center-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.center-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        next-page: <item[player_head].with_flag[gui-button:next-page].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-page: <item[player_head].with_flag[gui-button:previous-page].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        skins-page: <item[player_head].with_flag[gui-button:skin-editor].with[display=<&d><&l>Skin <&f><&l>Editor]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>
        profiles-page: <item[book].with_flag[gui-button:profile-editor].with[display=<&d><&l>Profile <&f><&l>Editor]>
        dialogs-page: <item[player_head].with_flag[gui-button:dialog-editor].with[display=<&d><&l>Dialog <&f><&l>Editor;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.dialog-editor]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        settings-page: <item[chain_command_block].with_flag[gui-button:settings].with[display=<&d><&l>Settings]>
    slots:
        - [corner-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [corner-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [skins-page] [center-fill] [profiles-page] [center-fill] [dialogs-page] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [corner-fill] [edge-fill] [edge-fill] [previous-page] [settings-page] [center-fill] [edge-fill] [edge-fill] [corner-fill]



# | ----------------------------------------------  CITIZENS EDITOR | GUI EVENT HANDLER  ---------------------------------------------- | #



citizens_editor_gui_handler:
    type: world
    debug: false
    events:
        ##################################################
        # | ---  |       inventory events       |  --- | #
        ##################################################
        on player opens citizens_editor_gui_main:
            # |------- procedural items -------| #
            - define app-id <server.flag[citizens_editor.settings.id]||null>
            - define inventory <context.inventory>
            - define contents <[inventory].list_contents>
            - define gui-id <[inventory].script.name.after[<[app-id]>_gui_]>
            - define fill-item <script[<[inventory].script.name>].data_key[definitions].get[center-fill].parsed>
            - define next-page-item <script[<[inventory].script.name>].data_key[definitions].get[next-page].parsed>
            - define next <player.flag[gui_manager.next]||<list[<empty>]>>
            - define last <[next].last||<[gui-id]>>
            # |------- update inventory slot -------| #
            - if ( <[next].is_empty> || <[last]> == <[gui-id]> ) && ( <[contents].contains[<[next-page-item]>]> ):
                - inventory set destination:<[inventory]> origin:<[fill-item]> slot:<[inventory].find_item[raw_exact:<[next-page-item]>]>
            - else if ( not <[next].is_empty> ) && ( <[last]> != <[gui-id]> ) && ( <[contents].contains[<[fill-item]>]> ) && ( not <[contents].contains[<[next-page-item]>]> ):
                - inventory set destination:<[inventory]> origin:<[next-page-item]> slot:<[inventory].find_all_items[raw_exact:<[fill-item]>].last>

        after player left clicks item_flagged:gui-button in citizens_editor_gui_main:
            # |------- event data -------| #
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[gui-button].if_null[null]>
            - define fill-item <script[<context.inventory.script.name>].data_key[definitions].get[center-fill].parsed>
            - define next-page-item <script[<context.inventory.script.name>].data_key[definitions].get[next-page].parsed>
            - choose <[button-id]>:
                - default:
                    # |------- open gui -------| #
                    - ~run gui_manager path:open def.gui-id:<[button-id]>
                - case profile-editor:
                    # |------- get profiles -------| #
                    - ~run <script.name> path:get.profiles save:profiles
                    - define profiles <entry[profiles].created_queue.determination.get[1]||null>
                    - if ( <[profiles]> != null ):
                        # |------- open gui -------| #
                        - ~run gui_manager path:open def.gui-id:<[button-id]> def.list:<[profiles]> def.fill:<[fill-item]>
                - case skin-editor:
                    # |------- get skins -------| #
                    - ~run <script.name> path:get.skins save:skins
                    - define skins <entry[skins].created_queue.determination.get[1]||null>
                    - if ( <[skins]> != null ):
                        # |------- open gui -------| #
                        - ~run gui_manager path:open def.gui-id:<[button-id]> def.list:<[skins]> def.fill:<[fill-item]>



# | ------------------------------------------------------------------------------------------------------------------------------ | #



    get:

        skins:
            #########################################################
            # | ---  |              get skins              |  --- | #
            #########################################################
            # | ---                                           --- | #
            # | ---  Required:  none                          --- | #
            # | ---                                           --- | #
            # | ---  Optional:  none                          --- | #
            # | ---                                           --- | #
            #########################################################
            # | ---                                           --- | #
            # | ---  Returns:  list                           --- | #
            # | ---                                           --- | #
            #########################################################
            # | ---                                           --- | #
            # | ---  Run: true | Await: true | Inject: true   --- | #
            # | ---                                           --- | #
            #########################################################
            # |------- gather skins -------| #
            - define skins-db <server.flag[citizens_editor.skins]||<map[<empty>]>>
            - define skins <list[<empty>]>
            - foreach <[skins-db].reverse> as:skin:
                - define parsed <[skin].get[name].parse_color>
                - define stripped <[parsed].strip_color>
                - define skins:->:<item[player_head].with_flag[skin:<[stripped]>].with[display=<[parsed]>]>
            - repeat 56:
                - define parsed <&d><&l>Fishermen<&sp><&b><&l><[value]>
                - define stripped <[parsed].strip_color>
                - define skins:->:<item[player_head].with_flag[skin:<[stripped]>].with[display=<[parsed]>]>
            # |------- success -------| #
            - determine <[skins].reverse>

        profiles:
            ########################################################
            # | ---  |            get profiles            |  --- | #
            ########################################################
            # | ---                                          --- | #
            # | ---  Required:  none                         --- | #
            # | ---                                          --- | #
            # | ---  Optional:  none                         --- | #
            # | ---                                          --- | #
            ########################################################
            # | ---                                          --- | #
            # | ---  Returns:  list                          --- | #
            # | ---                                          --- | #
            ########################################################
            # | ---                                          --- | #
            # | ---  Run: true | Await: true | Inject: true  --- | #
            # | ---                                          --- | #
            ########################################################
            # |------- gather profiles -------| #
            - define profiles-db <server.flag[citizens_editor.profiles]||<map[<empty>]>>
            - define profiles <list[<empty>]>
            - foreach <[profiles-db].reverse> as:profile:
                - define parsed <[profile].get[name].parse_color>
                - define stripped <[parsed].strip_color>
                - define profiles:->:<item[book].with_flag[profile:<[stripped]>].with[display=<[parsed]>]> 
            # |------- success -------| #
            - determine <[profiles].reverse>



# | ------------------------------------------------------------------------------------------------------------------------------ | #


