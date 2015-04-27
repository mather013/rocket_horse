Tip.delete_all

Tip.find_or_create_by_id(id: 1, meeting_id: 1, race_time: '2015-05-02 12:30:00', horse_name: 'Red Rum', odds: '7/2', information: 'Never lost')
Tip.find_or_create_by_id(id: 2, meeting_id: 1, race_time: '2015-05-02 15:00:00', horse_name: 'Hedgehunter', odds: '2/1', information: 'Fast as '*20)
Tip.find_or_create_by_id(id: 3, meeting_id: 1, race_time: '2015-05-02 17:30:00', horse_name: 'Seabiscuit', odds: '50/1', information: 'Was great in the film')

Tip.find_or_create_by_id(id: 4, meeting_id: 2, race_time: '2015-05-03 13:30:00', horse_name: 'Many Clouds', odds: '13/2',information: 'Last Grand National winner')
Tip.find_or_create_by_id(id: 5, meeting_id: 2, race_time: '2015-05-03 16:00:00', horse_name: 'Auroras Encore', odds: '23/1',information: 'Previous Grand National winner')

Tip.find_or_create_by_id(id: 6, meeting_id: 3, race_time: '2015-05-06 14:30:00', horse_name: 'Ballabriggs', odds: '3/1',information: 'Obviously')
