module days

data days = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday

nextDay: days -> days
nextDay Monday = Tuesday
nextDay Tuesday = Wednesday
nextDay Wednesday = Thursday
nextDay Thursday = Friday
nextDay Friday = Saturday
nextDay Saturday = Sunday
nextDay Sunday = Monday

nextWeekday: days -> days
nextWeekday Monday = Tuesday
nextWeekday Tuesday = Wednesday
nextWeekday Wednesday = Thursday
nextWeekday Thursday = Friday
nextWeekday Friday = Monday
nextWeekday Saturday = Monday
nextWeekday Sunday = Monday
