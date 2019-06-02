local convos = {}

convos[1] = function()
  tera 'Well, this is the place.'

  tera 'A big evil castle is like a requirement to join The Evil Club.'

  neme 'Wait.'
  neme 'There\'s an Evil Club?'
  neme 'I have not read of such an organization.'

  freya 'She was joking Neme, there\'s no such thing.'
  freya 'Is there?'

  tera '....'

  neme '....'

  freya '....'

  tera 'There\'s no Evil Club, I was kidding.'
  tera 'Anyway, let\'s keep moving.'
end

convos[2] = function()
  msg '*Found (1) Flame Longbow!'

  freya 'Hey, I ain\'t using that.'
  freya 'It could be diseased.'

  tera 'Freya, it has double the ATK of your current bow.'

  freya 'Ugh, fine.'
  portrait(nil)
  name(nil)
  msg '*Freya reluctantly equips the Flame Longbow!'
end

convos[3] = function()
  msg '*Found (3) Mana Potions!'

  tera 'Nice, these will be handy.'

  neme 'Um, aren\'t our 99 other Mana Potions sufficient?'

  tera 'Can never have too many potions Neme.'
  tera 'That\'s why I never use a single one ever.'

  neme '.....I see.'
end

convos[4] = function()
 boss 'You are no match for me.'
 boss 'I am invincible!'

 tera 'He\'s...so strong.'
 tera 'Is this the end for us?'
 tera '.........'
 tera 'No.'
 tera 'Not yet.'
end

convos[5] = function()
  boss 'Ohohoho, hello adventurers.'

  tera 'Demon King, we\'ve come to defeat you.'

  boss 'I see'
  boss 'If you intend to defy me...'
  boss 'then DIE.'
end

convos[6] = function()
  msg '*The party attacks!'

  option 'Attack'
  option 'Magic'
  option 'Items'
  menu ''

  msg '*Neme casts [Barrier]!'
  
  wait(2)
  atk({2})
  neme 'This should protect us.'
  
  wait(nil)
  atk(nil)
  portrait(nil)
  name(nil)
  msg '*Demon King casts [Piercing Shot]!'
  
  wait(2)
  atk({4})
  boss 'Hah, how flimsy.'
  
  wait(nil)
  atk(nil)
  neme 'What?! He broke through?'
  
  portrait(nil)
  name(nil)
  option 'Attack'
  option 'Magic'
  option 'Items'
  menu ''

  msg '*Freya consumes a [Potion]!'
  
  wait(2)
  atk({3})
  freya 'Nice, I\'m at full HP again.'

  wait(nil)
  atk(nil)
  portrait(nil)
  name(nil)
  msg '*Demon King casts [Shadow Beam]!'

  wait(2)
  atk({4})
  freya 'Ack! I\'m down to 1 HP?'

  wait(nil)
  atk(nil)
  portrait(nil)
  name(nil)
  option 'Attack'
  option 'Magic'
  option 'Items'
  menu ''

  msg '*Tera uses [Furious Blade]!'

  wait(2)
  atk({1})
  msg '*The Demon King takes...'

  wait(nil)
  atk(nil)
  msg '0 points of damage!'

  wait(nil)
  atk(nil)
  tera 'My attack did nothing?!'
  boss 'Did a fly land on me?'
  boss 'I thought I felt something.'

  portrait(nil)
  name(nil)
  msg '*Demon King is growing bored...'
  msg '*Demon King casts [Dark Rain]'

  wait(2)
  atk({4})
  msg '*Neme is knocked out!'
  msg '*Freya is knocked out!'
  msg '*Tera is knocked out!'

  wait(nil)
  atk(nil)
  boss 'This was amusing adventurers.'
  boss 'But none can stand before me.'
  boss 'I am all-powerful!'
end

convos[7] = function()
  tera 'Neme, are you okay?'

  neme 'A bit exhausted, I must admit.'

  tera 'We can\'t give up yet.'
  tera 'Everyone is counting on us.'

  neme 'But of course.'
  neme 'Together, I know we are unbeatable!'
end

convos[8] = function()
  tera 'Are you hurt, Freya?'
  
  freya 'Other than my whole body, I\'m good.'

  tera 'This is bleak,'
  tera 'but I know we can pull through.'

  freya 'Heh, save your speech.'
  freya 'As if I\'d die in a crummy place like this.'
end

convos[9] = function()
  boss 'What\'s this?'
  boss 'I\'m impressed you can still stand.'

  tera 'I have to win.'
  tera 'To save my friends.'
  tera 'To save my kingdom.'
  tera 'And to save you.'

  boss 'Save me?'
  boss 'What nonsense.'

  tera 'Okay team.'
  tera 'Let\'s finish this!'
end

convos[10] = function()
  msg '*The party attacks once more!'

  option 'Hope'
  option 'Resolve'
  option 'Compassion'
  menu ''

  msg '*Neme uses [Hope]!'
  wait(2)
  atk({2})
  neme 'Humans have an infinite capacity for good.'
  wait(nil)
  atk(nil)
  neme 'I\'ll bet my life on that.'
  boss 'No, they are petty and weak!'
  boss 'Free will always leads to war.'

  portrait(nil)
  option 'Hope'
  option 'Resolve'
  option 'Compassion'
  menu ''

  msg '*Freya uses [Resolve]!'
  wait(2)
  atk({3})
  freya 'You\'re blinded by fear and anger.'
  wait(nil)
  atk(nil)

  freya 'And you think you know what\'s best for humans.'
  boss 'But I do.'
  boss 'Humanity will destroy itself without me.'
  boss 'I rule so that I may protect them.'

  portrait(nil)
  option 'Hope'
  option 'Resolve'
  option 'Compassion'
  menu ''

  msg '*Tera uses [Compassion]!'
  wait(2)
  atk({1})
  tera 'I see that you once had noble intentions.'
  wait(nil)
  atk(nil)
  tera 'But the strength of the human spirit is our ability to change.'
  tera 'We grow a bit more every day.'
  tera 'We can accept our flaws and improve ourselves.'
  tera 'We can forgive others and grow together.'

  tera 'Even you...'
  tera 'Geralk.'
  geralk '!'
end

convos[11] = function()
  geralk '...'
  geralk 'What am I doing?'
  geralk 'I only wanted peace.'
  
  tera 'Hatred can sour even the best intentions'
  freya 'But everyone deserves a second chance.'
  geralk 'Even me?'
  neme 'Even you.'
  geralk '...I see'
  geralk 'Thank you adventurers.'
end

return convos