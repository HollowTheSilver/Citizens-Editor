


# | ----------------------------------------------  CITIZENS EDITOR | PROFILE EDITOR INVENTORY  ---------------------------------------------- | #



citizens_editor_gui_skin_editor:
    ##################################################
    # | ---  |       inventory script       |  --- | #
    ##################################################
    type: inventory
    debug: false
    inventory: CHEST
    title: <server.flag[citizens_editor.settings.interface.settings.gui-titles.skin-editor].parse_color>
    gui: true
    data:
        # |------- must be a valid gui-id and can be a single value, a value of none, or left out completely -------| #
        root: main
    definitions:
        placeholder: <item[structure_void].with[display=<&d><&l>Placeholder]>
        corner-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[corner-fill]||white_stained_glass_pane>].with[display=<&d> <empty>]>
        edge-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[edge-fill]||purple_stained_glass_pane>].with[display=<&d> <empty>]>
        center-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[center-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        page-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[page-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        add-skin: <item[player_head].with_flag[gui-button:add-skin].with[display=<&d><&l>Add <&f><&l>Skin;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.create-button]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        copy-skin: <item[player_head].with_flag[gui-button:copy-skin].with[display=<&d><&l>Copy <&f><&l>Skin;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.copy-button]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        next-page: <item[player_head].with_flag[gui-button:next-page].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-page: <item[player_head].with_flag[gui-button:previous-page].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        next-cached: <item[player_head].with_flag[gui-button:next-cached].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-cached: <item[player_head].with_flag[gui-button:previous-cached].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
    slots:
        - [corner-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [edge-fill] [corner-fill]
        - [edge-fill] [] [] [] [] [] [] [] [edge-fill]
        - [page-fill] [] [] [] [] [] [] [] [page-fill]
        - [edge-fill] [] [] [] [] [] [] [] [edge-fill]
        - [edge-fill] [] [] [] [] [] [] [] [edge-fill]
        - [corner-fill] [edge-fill] [edge-fill] [previous-page] [add-skin] [center-fill] [edge-fill] [edge-fill] [corner-fill]



# | ------------------------------------------------------------------------------------------------------------------------------ | #



citizens_editor_gui_skin:
    ##################################################
    # | ---  |       inventory script       |  --- | #
    ##################################################
    type: inventory
    debug: false
    inventory: CHEST
    title: Skin Title Placeholder
    gui: true
    data:
        # |------- must be a valid gui-id and can be a single value, a value of none, or left out completely -------| #
        root: skin_editor
    definitions:
        placeholder: <item[structure_void].with[display=<&d><&l>Placeholder]>
        corner-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[corner-fill]||white_stained_glass_pane>].with[display=<&d> <empty>]>
        edge-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[edge-fill]||purple_stained_glass_pane>].with[display=<&d> <empty>]>
        center-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[center-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        delete-skin: <item[player_head].with_flag[gui-button:delete-skin].with[display=<&d><&l>Delete <&f><&l>Skin;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.delete-button]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        rename-skin: <item[player_head].with_flag[gui-button:rename-skin].with[display=<&d><&l>Rename <&f><&l>Skin;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.rename-button]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        next-page: <item[player_head].with_flag[gui-button:next-page].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-page: <item[player_head].with_flag[gui-button:previous-page].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
    slots:
        - [corner-fill] [edge-fill] [edge-fill] [edge-fill] [delete-skin] [edge-fill] [edge-fill] [edge-fill] [corner-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [placeholder] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [corner-fill] [edge-fill] [edge-fill] [previous-page] [rename-skin] [center-fill] [edge-fill] [edge-fill] [corner-fill]



# | ----------------------------------------------  CITIZENS EDITOR | GUI EVENT HANDLER  ---------------------------------------------- | #



citizens_editor_skin_editor_handler:
    type: world
    debug: false
    events:
        ##################################################
        # | ---  |       inventory events       |  --- | #
        ##################################################
        on player opens citizens_editor_gui_skin_editor:
            # |------- procedural items -------| #
            - define app-id <server.flag[citizens_editor.settings.id]||null>
            - define inventory <context.inventory>
            - define contents <[inventory].list_contents>
            - define gui-id <[inventory].script.name.after[<[app-id]>_gui_]>
            - define properties <player.flag[gui_manager.apps.<[app-id]>.inventories.<[gui-id]>]||<list[<empty>]>>
            # |------- update gui button -------| #
            - define fill-item <script[<[inventory].script.name>].data_key[definitions].get[center-fill].parsed>
            - define next-page-item <script[<[inventory].script.name>].data_key[definitions].get[next-page].parsed>
            - define next <player.flag[gui_manager.next]||<list[<empty>]>>
            - define last <[next].last||<[gui-id]>>
            - if ( <[next].is_empty> || <[last]> == <[gui-id]> ) && ( <[contents].contains[<[next-page-item]>]> ):
                - inventory set destination:<[inventory]> origin:<[fill-item]> slot:<[inventory].find_item[raw_exact:<[next-page-item]>]>
            - else if ( not <[next].is_empty> ) && ( <[last]> != <[gui-id]> ) && ( <[contents].contains[<[fill-item]>]> ) && ( not <[contents].contains[<[next-page-item]>]> ):
                - inventory set destination:<[inventory]> origin:<[next-page-item]> slot:<[inventory].find_all_items[raw_exact:<[fill-item]>].last>
            # |------- update page button -------| #
            - define index <[properties].get[index]||null>
            - define pages <[properties].get[pages]||null>
            - if ( <[index]> != null ) && ( <[pages]> != null ):
                - define page-fill-item <script[<[inventory].script.name>].data_key[definitions].get[page-fill].parsed>
                - define next-list-item <script[<[inventory].script.name>].data_key[definitions].get[next-cached].parsed>
                - define prev-list-item <script[<[inventory].script.name>].data_key[definitions].get[previous-cached].parsed>
                - if ( <[contents].contains[<[page-fill-item]>]> ) && ( not <[contents].contains[<[prev-list-item]>]> ) && ( not <[contents].contains[<[next-list-item]>]> ):
                    - if ( <[index]> == 1 ):
                        - if ( <[pages]> > <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[next-list-item]> slot:<[inventory].find_all_items[raw_exact:<[page-fill-item]>].last>
                    - else:
                        - if ( <[pages]> > <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[next-list-item]> slot:<[inventory].find_all_items[raw_exact:<[page-fill-item]>].last>
                        - inventory set destination:<[inventory]> origin:<[prev-list-item]> slot:<[inventory].find_all_items[raw_exact:<[page-fill-item]>].first>
                - else if ( not <[contents].contains[<[page-fill-item]>]> ) && ( <[contents].contains[<[next-list-item]>]> ) && ( <[contents].contains[<[prev-list-item]>]> ):
                    - if ( <[index]> == 1 ):
                        - if ( <[pages]> <= <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[page-fill-item]> slot:<[inventory].find_item[raw_exact:<[next-list-item]>]>
                        - inventory set destination:<[inventory]> origin:<[page-fill-item]> slot:<[inventory].find_item[raw_exact:<[prev-list-item]>]>
                    - else:
                        - if ( <[pages]> <= <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[page-fill-item]> slot:<[inventory].find_item[raw_exact:<[next-list-item]>]>
                - else if ( <[contents].contains[<[page-fill-item]>]> ) && ( <[contents].contains[<[prev-list-item]>]> ) && ( not <[contents].contains[<[next-list-item]>]> ):
                    - if ( <[index]> == 1 ):
                        - if ( <[pages]> > <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[next-list-item]> slot:<[inventory].find_item[raw_exact:<[page-fill-item]>]>
                        - inventory set destination:<[inventory]> origin:<[page-fill-item]> slot:<[inventory].find_item[raw_exact:<[prev-list-item]>]>
                    - else:
                        - if ( <[pages]> > <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[next-list-item]> slot:<[inventory].find_item[raw_exact:<[page-fill-item]>]>
                - else if ( <[contents].contains[<[page-fill-item]>]> ) && ( <[contents].contains[<[next-list-item]>]> ) && ( not <[contents].contains[<[prev-list-item]>]> ):
                    - if ( <[index]> == 1 ):
                        - if ( <[pages]> <= <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[page-fill-item]> slot:<[inventory].find_item[raw_exact:<[next-list-item]>]>
                    - else:
                        - if ( <[pages]> <= <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[prev-list-item]> slot:<[inventory].find_item[raw_exact:<[page-fill-item]>]>
                        - inventory set destination:<[inventory]> origin:<[page-fill-item]> slot:<[inventory].find_item[raw_exact:<[next-list-item]>]>


        after player left clicks item_flagged:skin in citizens_editor_gui_skin_editor:
            # |------- event data -------| #
            - define app-id <server.flag[citizens_editor.settings.id]||null>
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[skin]||null>
            - define gui-id <context.item.list_flags.get[1]||null>
            - if ( <server.flag[citizens_editor.skins].contains[<[button-id]>]||false> ):
                # |------- open profile inventory -------| #
                - define skin-id <server.flag[citizens_editor.skins].get[<[button-id]>]>
                - define parsed <[skin-id].get[name].parse_color>
                - define stripped <[parsed].strip_color>
                - define gui_title "<&8><&l>Skin -<&gt> <[stripped]>"
                # |------- open profile gui -------| #
                - run gui_manager path:open def.gui-id:<[gui-id]> def.title:<[gui_title]> save:open
                - if ( <entry[open].created_queue.determination.get[1]||false> ):
                    # |------- set flag -------| #
                    - flag <player> citizens_editor.skin:<[skin-id].get[name]>

        after player left clicks item_flagged:gui-button in citizens_editor_gui_skin_editor:
            # |------- event data -------| #
            - define app-id <server.flag[citizens_editor.settings.id]||null>
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[gui-button]||null>
            - define fill-item <script[<context.inventory.script.name>].data_key[definitions].get[center-fill].parsed>
            # |------- context check -------| #
            - choose <[button-id]>:
                - default:
                    - ~run gui_manager path:open def.app-id:<[app-id]> def.gui-id:<[button-id]>
                - case next-cached previous-cached:
                    - ~run gui_manager path:open def.app-id:<[app-id]> def.gui-id:<player.flag[gui_manager.current]> def.list:<[button-id].before_last[-]>

                - case add-skin:
                    # |------- open input -------| #
                    - define input_title "<&b><&l>Enter a Name"
                    - define input_subtitle "<&d><&l>for the new skin"
                    - define input_bossbar "<&b><&l>Awaiting Input"
                    - inject gui_manager path:input
                    # |------- check input -------| #
                    - if ( <player.has_flag[gui_manager.input]> ):
                        - define select_title "<&8><&l>Select NPC"
                        - define select_list <player.inventory>
                        - inject gui_manager path:select
                        - if ( <player.has_flag[gui_manager.select]> ):
                            - define selected <player.flag[gui_manager.select]>
                            # |------- open dialog -------| #
                            - define dialog_title "<&8><&l>Add New Skin?"
                            - inject gui_manager path:dialog
                            # |------- check dialog -------| #
                            - if ( <player.flag[gui_manager.dialog]||false> ):
                                # |------- parse input -------| #
                                - define input <player.flag[gui_manager.input]>
                                - define parsed <[input].parse_color>
                                - define stripped <[parsed].strip_color>
                                - define container citizens_editor.skins
                                - if not ( <server.flag[<[container]>].contains[<[stripped]>]||false> ):
                                    # |------- create profile -------| #
                                    - definemap default:
                                        name: <[input]>
                                    - flag server <[container]>.<[stripped]>:<[default]>
                                    - narrate "<[prefix]> <&f>Skin '<&b><[stripped]><&f>' created."
                                    # |------- get skins -------| #
                                    - ~run <[app-id]>_gui_handler path:get.skins save:skins
                                    - define skins <entry[skins].created_queue.determination.get[1]||null>
                                    - if ( <[skins]> != null ):
                                        # |------- open previous -------| #
                                        - ~run gui_manager path:open def.gui-id:skin-editor def.list:<[skins]> def.fill:<[fill-item]>
                                - else:
                                    # |------- open previous -------| #
                                    - narrate "<[prefix]> <&c>Skin '<&f><[stripped]><&c>' already exists."
                                    - ~run gui_manager path:open def.gui-id:previous-page
                            - else:
                                # |------- open previous -------| #
                                - ~run gui_manager path:open def.gui-id:previous-page
                    - else:
                        # |------- open current -------| #
                        - ~run gui_manager path:open



# | ------------------------------------------------------------------------------------------------------------------------------ | #



        after player left clicks item_flagged:gui-button in citizens_editor_gui_skin:
            # |------- event data -------| #
            - define app-id <server.flag[citizens_editor.settings.id]||null>
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[gui-button]||null>
            - define skin-id <player.flag[citizens_editor.skin]||null>
            - define fill-item <script[<context.inventory.script.name>].data_key[definitions].get[center-fill].parsed>
            # |------- context check -------| #
            - choose <[button-id]>:
                - default:
                    - ~run gui_manager path:open def.app-id:<[app-id]> def.gui-id:<[button-id]>
                - case delete-skin:
                    # |------- dialog data -------| #
                    - define dialog_title "<&8><&l>Delete <[skin-id].parse_color>?"
                    # |------- open input dialog -------| #
                    - inject gui_manager path:dialog
                    - if ( <player.flag[gui_manager.dialog]||false> ):
                        # |------- parsed data -------| #
                        - define parsed <[skin-id].parse_color>
                        - define stripped <[parsed].strip_color>
                        - define container citizens_editor.skins.<[stripped]>
                        # |------- flag check -------| #
                        - if ( <server.has_flag[<[container]>]> ):
                            # |------- delete skin-id -------| #
                            - flag server <[container]>:!
                            - narrate "<[prefix]> <&c>Skin '<&f><[stripped]><&c>' deleted."
                            # |------- get skins -------| #
                            - ~run <[app-id]>_gui_handler path:get.skins save:skins
                            - define skins <entry[skins].created_queue.determination.get[1]||null>
                            - if ( <[skins]> != null ):
                                # |------- open and reset gui -------| #
                                - ~run gui_manager path:open def.gui-id:skin_editor def.list:<[skins]> def.fill:<[fill-item]> def.reset:true
                                - stop
                        - else:
                            # |------- failed -------| #
                            - narrate "<[prefix]> <&c>Skin '<&f><[stripped]><&c>' doesn't exist."
                    # |------- open previous gui -------| #
                    - ~run gui_manager path:open def.gui-id:previous-page

                - case rename-skin:
                    # |------- input data -------| #
                    - define input_title "<&b><&l>Enter a new ID"
                    - define input_subtitle "<&d><&l>for <[skin-id].parse_color.strip_color>"
                    - define input_bossbar "<&b><&l>Awaiting Input"
                    # |------- open input dialog -------| #
                    - inject gui_manager path:input
                    - if ( <player.has_flag[gui_manager.input]> ):
                        - define dialog_title "<&8><&l>Rename <[skin-id].parse_color.strip_color>?"
                        - inject gui_manager path:dialog
                        - if ( <player.flag[gui_manager.dialog]||false> ):
                            # |------- parsed data -------| #
                            - define input <player.flag[gui_manager.input]>
                            - define parsed_old <[skin-id].parse_color>
                            - define stripped_old <[parsed_old].strip_color>
                            - define parsed_new <[input].parse_color>
                            - define stripped_new <[parsed_new].strip_color>
                            - define container citizens_editor.skins
                            # |------- flag check -------| #
                            - if ( <server.flag[<[container]>].contains[<[stripped_old]>]||false> ):
                                - if ( <[parsed_new]> != <[parsed_old]> ):
                                    # |------- update name -------| #
                                    - flag server <[container]>.<[stripped_old]>.name:<[input]>
                                    - define data <server.flag[<[container]>.<[stripped_old]>]>
                                    # |------- update skin-id -------| #
                                    - flag server <[container]>.<[stripped_old]>:!
                                    - flag server <[container]>.<[stripped_new]>:<[data]>
                                    - narrate "<[prefix]> <&f>Skin '<&b><[parsed_old]><&f>' renamed to '<&b><[parsed_new]><&f>'."
                                    # |------- get skins -------| #
                                    - ~run <[app-id]>_gui_handler path:get.skins save:skins
                                    - define skins <entry[skins].created_queue.determination.get[1]||null>
                                    - if ( <[skins]> != null ):
                                        # |------- open and reset gui -------| #
                                        - ~run gui_manager path:open def.gui-id:skin_editor def.list:<[skins]> def.fill:<[fill-item]> def.reset:true
                                        - stop
                                - else:
                                    # |------- match -------| #
                                    - narrate "<[prefix]> <&f>Skin '<&b><[stripped_old]><&f>' unchanged. Already matches given input."
                            - else:
                                # |------- failed -------| #
                                - narrate "<[prefix]> <&c>Rename failed. Skin '<&f><[stripped_old]><&c>' could not be edited."
                        # |------- open previous gui -------| #
                        - ~run gui_manager path:open def.gui-id:previous-page
                    - else:
                        # |------- open current gui -------| #
                        - ~run gui_manager path:open



# | ------------------------------------------------------------------------------------------------------------------------------ | #


