


# | ----------------------------------------------  CITIZENS EDITOR | SETTINGS INVENTORY  ---------------------------------------------- | #



citizens_editor_gui_settings:
    ##################################################
    # | ---  |       inventory script       |  --- | #
    ##################################################
    type: inventory
    debug: false
    inventory: CHEST
    title: <server.flag[citizens_editor.settings.interface.settings.gui-titles.settings].parse_color>
    gui: true
    data:
        root: main
    definitions:
        placeholder: <item[barrier].with[display=<&d><&l>Placeholder]>
        corner-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[corner-fill]||white_stained_glass_pane>].with[display=<&d> <empty>]>
        edge-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[edge-fill]||purple_stained_glass_pane>].with[display=<&d> <empty>]>
        center-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[center-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        next-page: <item[player_head].with_flag[gui-button:next-page].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-page: <item[player_head].with_flag[gui-button:previous-page].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        permissions-page: <item[command_block].with_flag[gui-button:permissions].with[display=<&d><&l>Permissions <&f><&l>Settings]>
        prefixes-page: <item[name_tag].with_flag[gui-button:prefixes].with[display=<&d><&l>Prefix <&f><&l>Settings]>
        profiles-page: <item[book].with_flag[gui-button:profiles].with[display=<&d><&l>Profiles <&f><&l>Settings]>
        interrupt-page: <item[structure_void].with_flag[gui-button:interrupt].with[display=<&d><&l>Interrupt <&f><&l>Settings]>
        interface-page: <item[chest].with_flag[gui-button:interface].with[display=<&d><&l>Interface <&f><&l>Settings]>
        discord-link: <item[player_head].with_flag[gui-button:discord-link].with[display=<&d><&l>Discord <&f><&l>Link;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.discord-link]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
    slots:
        - [corner-fill] [edge-fill] [edge-fill] [edge-fill] [discord-link] [edge-fill] [edge-fill] [edge-fill] [corner-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [profiles-page] [center-fill] [interface-page] [center-fill] [interrupt-page] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [center-fill] [prefixes-page] [center-fill] [permissions-page] [center-fill] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [corner-fill] [edge-fill] [edge-fill] [previous-page] [edge-fill] [center-fill] [edge-fill] [edge-fill] [corner-fill]



# | ------------------------------------------------------------------------------------------------------------------------------ | #



citizens_editor_gui_permissions:
    ##################################################
    # | ---  |       inventory script       |  --- | #
    ##################################################
    type: inventory
    debug: false
    inventory: CHEST
    title: <server.flag[citizens_editor.settings.interface.settings.gui-titles.permissions-page].parse_color>
    gui: true
    data:
        root: settings
    definitions:
        placeholder: <item[structure_void].with[display=<&d><&l>Placeholder]>
        corner-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[corner-fill]||white_stained_glass_pane>].with[display=<&d> <empty>]>
        edge-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[edge-fill]||purple_stained_glass_pane>].with[display=<&d> <empty>]>
        center-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[center-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        next-page: <item[player_head].with_flag[gui-button:next-page].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-page: <item[player_head].with_flag[gui-button:previous-page].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
    slots:
        - [corner-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [corner-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [placeholder] [center-fill] [placeholder] [center-fill] [placeholder] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [corner-fill] [edge-fill] [edge-fill] [previous-page] [edge-fill] [center-fill] [edge-fill] [edge-fill] [corner-fill]



# | ------------------------------------------------------------------------------------------------------------------------------ | #



citizens_editor_gui_prefixes:
    ##################################################
    # | ---  |       inventory script       |  --- | #
    ##################################################
    type: inventory
    debug: false
    inventory: CHEST
    title: <server.flag[citizens_editor.settings.interface.settings.gui-titles.prefixes-page].parse_color>
    gui: true
    data:
        root: settings
    definitions:
        placeholder: <item[structure_void].with[display=<&d><&l>Placeholder]>
        corner-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[corner-fill]||white_stained_glass_pane>].with[display=<&d> <empty>]>
        edge-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[edge-fill]||purple_stained_glass_pane>].with[display=<&d> <empty>]>
        center-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[center-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        next-page: <item[player_head].with_flag[gui-button:next-page].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-page: <item[player_head].with_flag[gui-button:previous-page].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        main-prefix: <item[name_tag].with_flag[gui-button:adjust-prefix-main].with[display=<server.flag[citizens_editor.settings.prefixes.main].parse_color>]>
        debug-prefix: <item[name_tag].with_flag[gui-button:adjust-prefix-debug].with[display=<server.flag[citizens_editor.settings.prefixes.debug].parse_color>]>
        npc-prefix: <item[name_tag].with_flag[gui-button:adjust-prefix-npc].with[display=<server.flag[citizens_editor.settings.prefixes.npc].parse_color.if_null[<server.flag[citizens_editor.settings.prefixes.npc].parsed>]>]>
    slots:
        - [corner-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [corner-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [main-prefix] [center-fill] [debug-prefix] [center-fill] [npc-prefix] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [corner-fill] [edge-fill] [edge-fill] [previous-page] [edge-fill] [center-fill] [edge-fill] [edge-fill] [corner-fill]



# | ------------------------------------------------------------------------------------------------------------------------------ | #



citizens_editor_gui_profiles:
    ##################################################
    # | ---  |       inventory script       |  --- | #
    ##################################################
    type: inventory
    debug: false
    inventory: CHEST
    title: <server.flag[citizens_editor.settings.interface.settings.gui-titles.profiles-page].parse_color>
    gui: true
    data:
        root: settings
    definitions:
        placeholder: <item[structure_void].with[display=<&d><&l>Placeholder]>
        corner-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[corner-fill]||white_stained_glass_pane>].with[display=<&d> <empty>]>
        edge-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[edge-fill]||purple_stained_glass_pane>].with[display=<&d> <empty>]>
        center-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[center-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        next-page: <item[player_head].with_flag[gui-button:next-page].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-page: <item[player_head].with_flag[gui-button:previous-page].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
    slots:
        - [corner-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [corner-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [placeholder] [center-fill] [placeholder] [center-fill] [placeholder] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [corner-fill] [edge-fill] [edge-fill] [previous-page] [edge-fill] [center-fill] [edge-fill] [edge-fill] [corner-fill]



# | ------------------------------------------------------------------------------------------------------------------------------ | #



citizens_editor_gui_interrupt:
    ##################################################
    # | ---  |       inventory script       |  --- | #
    ##################################################
    type: inventory
    debug: false
    inventory: CHEST
    title: <server.flag[citizens_editor.settings.interface.settings.gui-titles.interrupt-page].parse_color>
    gui: true
    data:
        root: settings
    definitions:
        placeholder: <item[structure_void].with[display=<&d><&l>Placeholder]>
        corner-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[corner-fill]||white_stained_glass_pane>].with[display=<&d> <empty>]>
        edge-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[edge-fill]||purple_stained_glass_pane>].with[display=<&d> <empty>]>
        center-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[center-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        next-page: <item[player_head].with_flag[gui-button:next-page].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-page: <item[player_head].with_flag[gui-button:previous-page].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
    slots:
        - [corner-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [corner-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [placeholder] [center-fill] [placeholder] [center-fill] [placeholder] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [corner-fill] [edge-fill] [edge-fill] [previous-page] [edge-fill] [center-fill] [edge-fill] [edge-fill] [corner-fill]



# | ------------------------------------------------------------------------------------------------------------------------------ | #



citizens_editor_gui_interface:
    ##################################################
    # | ---  |       inventory script       |  --- | #
    ##################################################
    type: inventory
    debug: false
    inventory: CHEST
    title: <server.flag[citizens_editor.settings.interface.settings.gui-titles.gui-page].parse_color>
    gui: true
    data:
        root: settings
    definitions:
        placeholder: <item[structure_void].with[display=<&d><&l>Placeholder]>
        corner-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[corner-fill]||white_stained_glass_pane>].with[display=<&d> <empty>]>
        edge-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[edge-fill]||purple_stained_glass_pane>].with[display=<&d> <empty>]>
        center-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[center-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        next-page: <item[player_head].with_flag[gui-button:next-page].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-page: <item[player_head].with_flag[gui-button:previous-page].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
    slots:
        - [corner-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [corner-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [placeholder] [center-fill] [placeholder] [center-fill] [placeholder] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [corner-fill] [edge-fill] [edge-fill] [previous-page] [edge-fill] [center-fill] [edge-fill] [edge-fill] [corner-fill]



# | ----------------------------------------------  CITIZENS EDITOR | GUI EVENT HANDLER  ---------------------------------------------- | #



citizens_editor_settings_gui_handler:
    type: world
    debug: false
    events:
        ##################################################
        # | ---  |       inventory events       |  --- | #
        ##################################################
        on player opens citizens_editor_gui_settings|citizens_editor_gui_permissions|citizens_editor_gui_prefixes|citizens_editor_gui_profiles|citizens_editor_gui_interrupt|citizens_editor_gui_interface:
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

        after player left clicks item_flagged:gui-button in citizens_editor_gui_settings:
            # |------- event data -------| #
            - define app-id <server.flag[citizens_editor.settings.id].parse_color.strip_color>
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[gui-button].if_null[null]>
            # |------- context check -------| #
            - choose <[button-id]>:
                - default:
                    # |------- open gui -------| #
                    - ~run gui_manager path:open def.app-id:<[app-id]> def.gui-id:<[button-id]>



# | ------------------------------------------------------------------------------------------------------------------------------ | #



        after player left clicks item_flagged:gui-button in citizens_editor_gui_permissions:
            - ratelimit <player> 1t
            # |------- event data -------| #
            - define app-id <server.flag[citizens_editor.settings.id].parse_color.strip_color>
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[gui-button].if_null[null]>
            # |------- context check -------| #
            - choose <[button-id]>:
                - default:
                    # |------- open gui -------| #
                    - ~run gui_manager path:open def.app-id:<[app-id]> def.gui-id:<[button-id]>



# | ------------------------------------------------------------------------------------------------------------------------------ | #



        after player left clicks item_flagged:gui-button in citizens_editor_gui_prefixes:
            - ratelimit <player> 1t
            # |------- event data -------| #
            - define app-id <server.flag[citizens_editor.settings.id].parse_color.strip_color>
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[gui-button].if_null[null]>
            # |------- context check -------| #
            - choose <[button-id]>:
                - default:
                    # |------- open gui -------| #
                    - ~run gui_manager path:open def.app-id:<[app-id]> def.gui-id:<[button-id]>

                # |------------------------------| #
                # | ---  adjust main prefix  --- | #
                # |------------------------------| #
                - case adjust-prefix-main:
                    # |------- input data -------| #
                    - define input_title "<&b><&l>Enter a New"
                    - define input_subtitle "<&d><&l>npc editor prefix"
                    - define input_bossbar "<&b><&l>Awaiting Input"
                    # |------- open input -------| #
                    - inject gui_manager path:input
                    # |------- check input -------| #
                    - if ( <player.has_flag[gui_manager.input]> ):
                        # |------- open dialog -------| #
                        - define dialog_title "<&8><&l>Save New Prefix?"
                        - inject gui_manager path:dialog
                        # |------- check dialog -------| #
                        - if ( <player.flag[gui_manager.dialog]||false> ):
                            # |------- parse input -------| #
                            - define input <player.flag[gui_manager.input]>
                            - define flag citizens_editor.settings.prefixes.main
                            - if ( <server.has_flag[<[flag]>]> ):
                                # |------- update setting -------| #
                                - flag server <[flag]>:<[input].parse_color>
                                - narrate "<[prefix]> <&f>Main prefix updated to <[input].parse_color>"
                            - ~run gui_manager path:open def.gui-id:previous-page
                        - else:
                            # |------- open previous -------| #
                            - ~run gui_manager path:open def.gui-id:previous-page
                    - else:
                        # |------- open current -------| #
                        - ~run gui_manager path:open

                # |-------------------------------| #
                # | ---  adjust debug prefix  --- | #
                # |-------------------------------| #
                - case adjust-prefix-debug:
                    # |------- input data -------| #
                    - define input_title "<&b><&l>Enter a New"
                    - define input_subtitle "<&d><&l>editor debug prefix"
                    - define input_bossbar "<&b><&l>Awaiting Input"
                    # |------- open input -------| #
                    - inject gui_manager path:input
                    # |------- check input -------| #
                    - if ( <player.has_flag[gui_manager.input]> ):
                        # |------- open dialog -------| #
                        - define dialog_title "<&8><&l>Save New Prefix?"
                        - inject gui_manager path:dialog
                        # |------- check dialog -------| #
                        - if ( <player.flag[gui_manager.dialog]||false> ):
                            # |------- parse input -------| #
                            - define input <player.flag[gui_manager.input]>
                            - define flag citizens_editor.settings.prefixes.debug
                            - if ( <server.has_flag[<[flag]>]> ):
                                # |------- update setting -------| #
                                - flag server <[flag]>:<[input].parse_color>
                                - narrate "<[prefix]> <&f>Debug prefix updated to <[input].parse_color>"
                            - ~run gui_manager path:open def.gui-id:previous-page
                        - else:
                            # |------- open previous -------| #
                            - ~run gui_manager path:open def.gui-id:previous-page
                    - else:
                        # |------- open current -------| #
                        - ~run gui_manager path:open

                # |-----------------------------| #
                # | ---  adjust npc prefix  --- | #
                # |-----------------------------| #
                - case adjust-prefix-npc:
                    # |------- input data -------| #
                    - define input_title "<&b><&l>Enter a New"
                    - define input_subtitle "<&d><&l>npc proximity prefix"
                    - define input_bossbar "<&b><&l>Awaiting Input"
                    # |------- open input -------| #
                    - inject gui_manager path:input
                    # |------- check input -------| #
                    - if ( <player.has_flag[gui_manager.input]> ):
                        # |------- open dialog -------| #
                        - define dialog_title "<&8><&l>Save New Prefix?"
                        - inject gui_manager path:dialog
                        # |------- check dialog -------| #
                        - if ( <player.flag[gui_manager.dialog]||false> ):
                            # |------- parse input -------| #
                            - define input <player.flag[gui_manager.input]>
                            - define flag citizens_editor.settings.prefixes.npc
                            - if ( <server.has_flag[<[flag]>]> ):
                                # |------- update setting -------| #
                                - flag server <[flag]>:<[input].parse_color>
                                - narrate "<[prefix]> <&f>Npc prefix updated to <[input].parse_color>"
                            - ~run gui_manager path:open def.gui-id:previous-page
                        - else:
                            # |------- open previous -------| #
                            - ~run gui_manager path:open def.gui-id:previous-page
                    - else:
                        # |------- open current -------| #
                        - ~run gui_manager path:open


# | ------------------------------------------------------------------------------------------------------------------------------ | #



        after player left clicks item_flagged:gui-button in citizens_editor_gui_profiles:
            - ratelimit <player> 1t
            # |------- event data -------| #
            - define app-id <server.flag[citizens_editor.settings.id].parse_color.strip_color>
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[gui-button].if_null[null]>
            # |------- context check -------| #
            - choose <[button-id]>:
                - default:
                    - ~run gui_manager path:open def.app-id:<[app-id]> def.gui-id:<[button-id]>



# | ------------------------------------------------------------------------------------------------------------------------------ | #



        after player left clicks item_flagged:gui-button in citizens_editor_gui_interrupt:
            - ratelimit <player> 1t
            # |------- event data -------| #
            - define app-id <server.flag[citizens_editor.settings.id].parse_color.strip_color>
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[gui-button].if_null[null]>
            # |------- context check -------| #
            - choose <[button-id]>:
                - default:
                    - ~run gui_manager path:open def.app-id:<[app-id]> def.gui-id:<[button-id]>



# | ------------------------------------------------------------------------------------------------------------------------------ | #



        after player left clicks item_flagged:gui-button in citizens_editor_gui_interface:
            - ratelimit <player> 1t
            # |------- event data -------| #
            - define app-id <server.flag[citizens_editor.settings.id].parse_color.strip_color>
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[gui-button].if_null[null]>
            # |------- context check -------| #
            - choose <[button-id]>:
                - default:
                    - ~run gui_manager path:open def.app-id:<[app-id]> def.gui-id:<[button-id]>



# | ------------------------------------------------------------------------------------------------------------------------------ | #


