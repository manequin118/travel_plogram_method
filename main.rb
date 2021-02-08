#encoding: utf-8
require "./methods.rb"

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 },
]

plans_menu(plans)
selected_plan = select_plan(plans)
how_many_people = decide_how_many_people(selected_plan)
fee_calculation(selected_plan, how_many_people)
