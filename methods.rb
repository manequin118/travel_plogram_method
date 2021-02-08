#encoding: utf-8
def plans_menu(plans)
  puts "旅行プランを選択してください。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}.#{plan[:place]}旅行(#{plan[:price]}円)"
  end
end

def select_plan(plans)
  while true
    print "プランの番号を選択 >"
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)
    puts "1~3の番号を選択してください。"
  end
  plans[select_plan_num - 1]
end

def decide_how_many_people(selected_plan)
  puts "#{selected_plan[:place]}旅行ですね。"
  while true
    puts "何名で予約されますか？"
    print "人数を入力 >"
    how_many_people = gets.to_i
    break if how_many_people > 0 && how_many_people.is_a?(Integer)
    puts "1人以上を入力してください。"
  end
  puts "#{how_many_people}名ですね。"
  how_many_people
end

def fee_calculation(selected_plan, how_many_people)
  total_price = selected_plan[:price] * how_many_people
  if how_many_people >= 5
    puts "5名以上ですので10%割引となります。"
    total_price *= 0.9
  end
  puts "合計金額は#{total_price.floor}円になります。"
end
