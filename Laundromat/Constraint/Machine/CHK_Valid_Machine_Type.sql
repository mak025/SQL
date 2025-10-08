alter table Machine
    add check ([Type] = 'Roller' OR [Type] = 'Dryer' OR [Type] = 'Washer')
go