require "./methods.rb"

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

plans_menu(plans)
selected_plan = select_plan(plans)
decided_people = decide_people(selected_plan)
fee_calculation(selected_plan,decided_people)