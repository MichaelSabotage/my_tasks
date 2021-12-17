['Семья', 'Работа', 'Прочее'].each do |title|
  Project.create!(title: title)
end

[['Купить молоко', "false", 1],
['Заменить масло в двигателе до 23 апреля', "false", 1],
['Отправить письмо бабушке', "true", 1],
['Заплатить за квартиру', "false", 1],
['Забрать обувь из ремонта', "false", 1],
['Позвонить заказчику', "true", 2],
['Отправить документы', "true", 2],
['Заполнить отчет', "false", 2],
['Позвонить другу', "false", 3],
['Подготовиться к поездке', "false", 3],
].each do |text, isCompleted, project_id|
  Todo.create!(text: text, isCompleted: isCompleted, project_id: project_id)
end
