$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": {"translate":"item.cnk.cookbook"}, \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "width": 240, \
      "contents": [{ \
            "translate":"book.cnk.header","font":"cnk.book:base","shadow_color":0,"color":"white","with":[ \
                {"translate":"book.cnk.section.dessert","color":"#7b613a","font":"minecraft:default"}, \
                {"translate":"book.cnk.header.dessert"}, \
                {"translate":book.tab.cnk.front.$(front_state),"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.front}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9921"}}, \
                {"translate":book.tab.cnk.staple.$(staple_state),"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.staple}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9922"}}, \
                {"translate":book.tab.cnk.snack.$(snack_state),"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.snack}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9923"}}, \
                {"translate":book.tab.cnk.light.$(light_state),"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.light}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9924"}}, \
                {"translate":book.tab.cnk.hearty.$(hearty_state),"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.hearty}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9925"}}, \
                {"translate":book.tab.cnk.feast.$(feast_state),"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.feast}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9926"}}, \
                {"translate":book.tab.cnk.dessert.$(dessert_state),"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.dessert}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9927"}}, \
                {"translate":book.cnk.bottom_line,"with":[{"translate":book.cnk.page_number.$(page_number_width),"font":"cnk.book:small_text","with":[{"text":"$(current_page)","color":"#927359"}]}]}, \
                {"translate":book.cnk.navigation,"with":[{"translate":book.cnk.previous_page,"hover_event":{"action":"show_text","value":{"translate":book.cnk.previous_page.hover}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9901"}},{"translate":book.$(source_key)},{"translate":book.cnk.next_page,"hover_event":{"action":"show_text","value":{"translate":book.cnk.next_page.hover}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9902"}}]} \
            ] \
        }, \
        {"text":"\n\n\n\n"}] \
    } \
  ], \
  "inputs": [], \
  "can_close_with_escape": true, \
  "pause": false, \
  "after_action": "none", \
  "actions": [ \
    { \
      "label": "Done", \
      "width": 200, \
      "action": { \
        "type": "run_command", \
        "command": "trigger cnk.cookbook_buttons set 9991" \
      } \
    } \
  ] \
}