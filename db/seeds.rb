### Debugging Quiz -- REMOVE BEFORE FINAL PROD ###

debug = Theme.create!(name: "debugger", image_link: "https://media.istockphoto.com/id/1202688372/photo/error-programming-social-networking-seo-search-and-service-delivery-concept-chart-with.jpg?s=1024x1024&w=is&k=20&c=I0Oued_6FvH_MoQo98ccgZ4WRc6r-OdQTBZYjv9J0gY=")
# Good/Evil Question
Question.create(
  theme_id: debug.id,                                     
  question: "Test Question 1",
  answer_1: "Very Good",                     
  answer_2: "Kinda Good",                                  
  answer_3: "Neutral",     
  answer_4: "Kinda Evil",                
  answer_5: "Very Evil", 
  good_evil_chaotic_lawful: 0
)

# Lawful/Chaotic Question

Question.create(
  theme_id: debug.id,                                     
  question: "Test Question 2",
  answer_1: "Very Lawful",                     
  answer_2: "Kinda Lawful",                                  
  answer_3: "Neutral",     
  answer_4: "Kinda Chaotic",                
  answer_5: "Very Chaotic", 
  good_evil_chaotic_lawful: 1
)

# DEBUGGING CHARACTERS -- REMOVE BEFORE FINAL PROD #
Character.create!(name: "Lawful Good", theme_id: debug.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 1)
Character.create!(name: "Neutral Good", theme_id: debug.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 2)
Character.create!(name: "Chaotic Good", theme_id: debug.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 3)

Character.create!(name: "Lawful Neutral", theme_id: debug.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 4)
Character.create!(name: "True Neutral", theme_id: debug.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 5)
Character.create!(name: "Chaotic Neutral", theme_id: debug.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 6)

Character.create!(name: "Lawful Evil", theme_id: debug.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 7)
Character.create!(name: "Neutral Evil", theme_id: debug.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 8)
Character.create!(name: "Chaotic Evil", theme_id: debug.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 9)

### Lawyer Quiz ###

lawyer = Theme.create!(name: "lawyer", image_link: "https://images.pexels.com/photos/3771097/pexels-photo-3771097.jpeg")
# Good/Evil Questions
# 1
Question.create(
  theme_id: lawyer.id,                                     
  question: "A high-profile client offers you a significant sum of money to represent them in a case where they are clearly guilty. What do you do?",
  answer_1: "Reject the case outright on moral grounds.",                     
  answer_2: "Accept the case but donate the earnings to charity",                                  
  answer_3: "Accept the case and do your best to defend the client.",     
  answer_4: "Accept the case and use any means necessary to win, even if it involves bending the truth.",                
  answer_5: "Accept the case and actively participate in covering up the client's crimes.", 
  good_evil_chaotic_lawful: 0
)
# 2
Question.create!(
  theme_id: lawyer.id, 
  question: "You come across evidence that could potentially exonerate a defendant, but it would also incriminate your client. How do you proceed?", 
  answer_1: "Present the evidence to the court and protect the innocent party.", 
  answer_2: "Disclose the evidence to both parties privately, seeking a resolution without jeopardizing your client's case.", 
  answer_3: "Conceal the evidence but try to minimize the harm caused to the innocent party.", 
  answer_4: "Keep the evidence hidden and prioritize your client's interests above all else.", 
  answer_5: "Use the evidence to blackmail the innocent party for personal gain.", 
  good_evil_chaotic_lawful: 0
)
# 3
Question.create!(
  theme_id: lawyer.id, 
  question: "Your client is a corporation that has caused significant environmental damage. How do you approach the case?", 
  answer_1: "Advise the corporation to own up to its actions and compensate the affected communities.", 
  answer_2: "Work on a settlement that balances the corporation's interests with the affected communities' needs.", 
  answer_3: "Defend the corporation and attempt to minimize any penalties.", 
  answer_4: "Actively discredit or suppress evidence of the corporation's wrongdoing.", 
  answer_5: "Help the corporation cover up its actions and continue causing harm.", 
  good_evil_chaotic_lawful: 0
)
# 4
Question.create!(
  theme_id: lawyer.id, 
  question: "A colleague is in danger of losing their job due to allegations of professional misconduct. You know they're innocent, but revealing the truth might harm your career. What do you do?", 
  answer_1: "Come forward with the truth, regardless of the consequences to your career.", 
  answer_2: "Try to help your colleague clear their name without putting your own career at risk.", 
  answer_3: "Stay silent but offer support to your colleague privately.", 
  answer_4: "Stay silent and distance yourself from your colleague to protect your reputation.", 
  answer_5: "Use the situation to your advantage and work to replace your colleague after they're dismissed.", 
  good_evil_chaotic_lawful: 0
)
# 5
Question.create!(
  theme_id: lawyer.id, 
  question: "You discover that a fellow attorney has been knowingly providing false evidence in court. How do you respond?", 
  answer_1: "Report the attorney to the appropriate authorities immediately.", 
  answer_2: "Confront the attorney privately and give them a chance to correct their actions.", 
  answer_3: "Stay silent but distance yourself from the attorney professionally.", 
  answer_4: "I Keep quiet, as you believe that everyone deserves a zealous defense.", 
  answer_5: "Use the information to blackmail the attorney for personal gain.", 
  good_evil_chaotic_lawful: 0
)
# 6
Question.create!(
  theme_id: lawyer.id, 
  question: "Your firm is representing a client who is known for their philanthropy, but you discover they are involved in illegal activities. How do you handle the situation?", 
  answer_1: "I Advise the client to end their illegal activities and make amends.", 
  answer_2: "Continue representing the client but encourage them to change their ways.", 
  answer_3: "Ignore the illegal activities and focus on the client's philanthropic efforts.", 
  answer_4: "Use the client's illegal activities to your advantage in negotiations.", 
  answer_5: "IEncourage the client to expand their illegal activities for mutual benefit.", 
  good_evil_chaotic_lawful: 0
)
# Lawful/Chaotic Questions
# 1
Question.create(
  theme_id: lawyer.id,                                                
  question: "A new law is passed that you believe is unjust. How do you handle cases that involve this law?",
  answer_1: "Uphold the law, as it is your duty to follow the legal system.",                     
  answer_2: "Work within the legal system to challenge the law or find loopholes.",                                  
  answer_3: "Selectively enforce the law, depending on the specific circumstances.",     
  answer_4: "Encourage clients to defy the law in protest.",                
  answer_5: "Actively work to undermine the law and assist clients in breaking it.", 
  good_evil_chaotic_lawful: 1
)
# 2
Question.create!(
  theme_id: lawyer.id, 
  question: "A client you know to be innocent is found guilty in court. How do you proceed?", 
  answer_1: "Accept the verdict and move on, as the legal system has spoken.", 
  answer_2: "Pursue an appeal and exhaust all legal remedies available.", 
  answer_3: "Investigate alternative avenues for proving your client's innocence.", 
  answer_4: "Engage in covert actions to expose the truth, even if it means bending the law.", 
  answer_5: "Attempt to sabotage the prosecution's case or the legal system itself to free your client.", 
  good_evil_chaotic_lawful: 1
)
# 3
Question.create!(
  theme_id: lawyer.id, 
  question: "You are representing a client who is clearly guilty but insists on pleading not guilty. How do you handle the situation?", 
  answer_1: "Advise the client to change their plea and seek a fair punishment.", 
  answer_2: "Follow the client's wishes and present a defense within the confines of the law.", 
  answer_3: "Develop creative arguments to cast doubt on the evidence against your client.", 
  answer_4: "Use any means necessary to win the case, even if it involves bending the truth.", 
  answer_5: "Actively participate in covering up the client's crimes.", 
  good_evil_chaotic_lawful: 1
)
# 4
Question.create!(
  theme_id: lawyer.id, 
  question: "Your client is facing a long sentence for a crime they committed out of desperation. How do you approach their defense?", 
  answer_1: "Seek the appropriate punishment under the law, regardless of the circumstances.", 
  answer_2: "Argue for leniency based on your client's difficult situation.", 
  answer_3: "Use creative legal strategies to secure the best outcome for your client.", 
  answer_4: "Discredit or suppress evidence to ensure a favorable outcome for your client.", 
  answer_5: "Encourage your client to lie or manipulate the facts to avoid punishment.", 
  good_evil_chaotic_lawful: 1
)
# 5
Question.create!(
  theme_id: lawyer.id, 
  question: "You are offered a bribe to sabotage a case you are working on. How do you respond?", 
  answer_1: "Refuse the bribe and report the incident to the authorities.", 
  answer_2: "Refuse the bribe but keep the incident to yourself.", 
  answer_3: "Accept the bribe but continue to work on the case to the best of your ability.", 
  answer_4: "Accept the bribe and subtly compromise the case.", 
  answer_5: "Accept the bribe and actively work to ensure your client loses.", 
  good_evil_chaotic_lawful: 1
)
# 6
Question.create!(
  theme_id: lawyer.id, 
  question: "You discover a technicality that could potentially get your guilty client acquitted. What do you do?", 
  answer_1: "Ignore the technicality, as your client should face the consequences of their actions.", 
  answer_2: "Present the technicality in court and let the judge decide its significance.", 
  answer_3: "Use the technicality to negotiate a plea deal with reduced charges.", 
  answer_4: "Exploit the technicality to the fullest extent to secure your client's acquittal.", 
  answer_5: "Use the technicality to manipulate the legal process and undermine the prosecution's case.", 
  good_evil_chaotic_lawful: 1
)
# Character Creation
Character.create!(name: "Thurgood Marshall", theme_id: lawyer.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Thurgood-marshall-2.jpg/220px-Thurgood-marshall-2.jpg", alignment: 1)
Character.create!(name: "Amal Clooney", theme_id: lawyer.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Amal_Clooney_02.jpg/1280px-Amal_Clooney_02.jpg", alignment: 2)
Character.create!(name: "Clarence Darrow", theme_id: lawyer.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Clarence_Darrow.jpg/800px-Clarence_Darrow.jpg", alignment: 3)

Character.create!(name: "Jack McCoy", theme_id: lawyer.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/7/72/Jack_McCoy_-_L%26O.png", alignment: 4)
Character.create!(name: "Robert Shapiro", theme_id: lawyer.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/commons/b/b4/Robert-shapiro.jpg", alignment: 5)
Character.create!(name: "Saul Goodman", theme_id: lawyer.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/3/34/Jimmy_McGill_BCS_S3.png", alignment: 6)

Character.create!(name: "Roy Cohn", theme_id: lawyer.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Roy_Cohn.jpg/463px-Roy_Cohn.jpg", alignment: 7)
Character.create!(name: "Michael Cohen", theme_id: lawyer.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/commons/b/ba/Michael_Cohen_in_2019.png", alignment: 8)
Character.create!(name: "John Milton", theme_id: lawyer.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/commons/9/91/John-milton.jpg", alignment: 9)

### Generic Quiz ###

alignment = Theme.create!(name: "alignment", image_link: "https://images.pexels.com/photos/137049/pexels-photo-137049.jpeg")
# Good/Evil Questions
# 1
Question.create!(
  theme_id: alignment.id,
  question: "You witness a friend stealing money from their workplace. What do you do?",
  answer_1: "Confront your friend and urge them to confess and return the money.",
  answer_2: "Report your friend's actions to their employer.",
  answer_3: "Ignore your friend's behavior and distance yourself from them.",
  answer_4: "Help your friend cover up their actions to avoid getting caught.",
  answer_5: "Encourage your friend to continue stealing for mutual benefit.",
  good_evil_chaotic_lawful: 0
)
# 2
Question.create!(
  theme_id: alignment.id,
  question: "You are presented with an opportunity to cheat on an exam in order to get a better grade. What do you do?",
  answer_1: "Reject the opportunity on moral grounds and accept the grade you earn honestly.",
  answer_2: "Consider the opportunity but ultimately decide against it.",
  answer_3: "Go through with the cheating but confess to your teacher afterward.",
  answer_4: "Cheat on the exam without any remorse.",
  answer_5: "Offer to help others cheat for personal gain.",
  good_evil_chaotic_lawful: 0
)
# 3
Question.create!(
  theme_id: alignment.id,
  question: "You see a stranger drop their wallet on the street. What do you do?",
  answer_1: "Pick up the wallet and attempt to return it to its owner.",
  answer_2: "Pick up the wallet and keep the money for yourself.",
  answer_3: "Ignore the wallet and walk away",
  answer_4: "Pick up the wallet and use the owner's personal information for personal gain.",
  answer_5: "Steal the wallet and use the money for personal gain.",
  good_evil_chaotic_lawful: 0
)
# 4
Question.create!(
  theme_id: alignment.id,
  question: "You are aware of a co-worker taking credit for your work. What do you do?",
  answer_1: "Confront your co-worker and demand that they give you credit for your work.",
  answer_2: "Discuss the situation with your supervisor and ask for their help.",
  answer_3: "Ignore the situation and continue working hard.",
  answer_4: "Take credit for your co-worker's work to get ahead.",
  answer_5: "Sabotage your co-worker's work to make them look bad.",
  good_evil_chaotic_lawful: 0
)
# 5
Question.create!(
  theme_id: alignment.id,
  question: "You witness a group of people bullying someone else. What do you do?",
  answer_1: "Intervene and stand up for the person being bullied.",
  answer_2: "Confront the bullies and urge them to stop their behavior.",
  answer_3: "Ignore the situation and walk away.",
  answer_4: "Join in on the bullying to fit in with the group.",
  answer_5: "Encourage the bullies to continue their behavior for personal gain.",
  good_evil_chaotic_lawful: 0
)
# 6
Question.create!(
  theme_id: alignment.id,
  question: "You find a lost cell phone with personal information about the owner. What do you do?",
  answer_1: "Try to contact the owner and return the phone to them.",
  answer_2: "Keep the phone for yourself and use the information for personal gain.",
  answer_3: "Ignore the phone and leave it where you found it.",
  answer_4: "Sell the phone and use the money for personal gain.",
  answer_5: "Use the information on the phone to blackmail the owner for personal gain.",
  good_evil_chaotic_lawful: 0
)
# Lawful/Chaotic Questions
# 1
Question.create!(
  theme_id: alignment.id, 
  question: "A new policy is implemented that you believe is unethical. How do you handle situations that involve this policy?", 
  answer_1: "Uphold the policy, as it is your duty to follow the rules.", 
  answer_2: "Work within the system to challenge the policy or find alternatives.", 
  answer_3: "Selectively follow the policy, depending on the specific circumstances.", 
  answer_4: "Encourage others to protest against the policy.", 
  answer_5: "Actively work to undermine the policy and encourage others to break it.", 
  good_evil_chaotic_lawful: 1
)
# 2
Question.create!(
  theme_id: alignment.id, 
  question: "You are aware that someone has done something wrong, but they ask you to keep it a secret. How do you handle the situation?", 
  answer_1: "Advise the person to confess and seek forgiveness.", 
  answer_2: "Respect the person's wishes and keep their secret within moral limits.", 
  answer_3: "Use reasoning to convince the person to do the right thing.", 
  answer_4: "Encourage others to protest against the policy.", 
  answer_5: "Use any means necessary to protect the person, even if it involves lying.", 
  good_evil_chaotic_lawful: 1
)
# 3
Question.create!(
  theme_id: alignment.id,
  question: "You encounter a person who has committed a wrongdoing out of desperation and is facing a harsh punishment. How do you approach this situation?",
  answer_1: "Seek the appropriate punishment under the law, regardless of the circumstances.",
  answer_2: "Argue for leniency based on the person's difficult situation.",
  answer_3: "Use creative legal strategies to secure the best outcome for the person.",
  answer_4: "Discredit or suppress evidence to ensure a favorable outcome for the person.",
  answer_5: "Encourage the person to lie or manipulate the facts to avoid punishment.",
  good_evil_chaotic_lawful: 1
)
# 4
Question.create!(
  theme_id: alignment.id,
  question: "You are offered a bribe to act against your principles. How do you respond?",
  answer_1: "Refuse the bribe and report the incident to the appropriate authorities.",
  answer_2: "Refuse the bribe but keep the incident to yourself.",
  answer_3: "Accept the bribe but continue to act according to your principles.",
  answer_4: "Accept the bribe and subtly compromise your principles.",
  answer_5: "Accept the bribe and actively work against your principles.",
  good_evil_chaotic_lawful: 1
)
# 5
Question.create!(
  theme_id: alignment.id,
  question: "You have the opportunity to cheat on a test or assignment without getting caught. What do you do?",
  answer_1: "Refuse to cheat, as it goes against your moral code.",
  answer_2: "Cheat, but only in a small way that won't affect the overall outcome.",
  answer_3: "Cheat to improve your grade, but only if you are struggling.",
  answer_4: "Cheat to get ahead, even if you are already doing well.",
  answer_5: "Cheat and also help others cheat to improve their grades.",
  good_evil_chaotic_lawful: 1
)
# 6
Question.create!(
  theme_id: alignment.id,
  question: "You are given a task that you believe to be unethical. How do you respond?",
  answer_1: "Refuse to do the task and explain your reasons to your supervisor.",
  answer_2: "Do the task, but document your concerns and report them to your supervisor.",
  answer_3: "Do the task and keep your concerns to yourself.",
  answer_4: "Do the task and use it as an opportunity to raise awareness about the issue.",
  answer_5: "Do the task and actively try to cover up any unethical behavior.",
  good_evil_chaotic_lawful: 1
)
# Character Creation
Character.create!(name: "The Hero", theme_id: alignment.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "https://images.pexels.com/photos/6303759/pexels-photo-6303759.jpeg?auto=compress&cs=tinysrgb&w=400", alignment: 1)
Character.create!(name: "The Ally", theme_id: alignment.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "https://images.pexels.com/photos/6998462/pexels-photo-6998462.jpeg?auto=compress&cs=tinysrgb&w=400", alignment: 2)
Character.create!(name: "The Rebel", theme_id: alignment.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "https://images.pexels.com/photos/953457/pexels-photo-953457.jpeg?auto=compress&cs=tinysrgb&w=400", alignment: 3)

Character.create!(name: "The Judge", theme_id: alignment.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "https://images.pexels.com/photos/5669602/pexels-photo-5669602.jpeg?auto=compress&cs=tinysrgb&w=400", alignment: 4)
Character.create!(name: "The Observer", theme_id: alignment.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "https://images.pexels.com/photos/3769697/pexels-photo-3769697.jpeg?auto=compress&cs=tinysrgb&w=400", alignment: 5)
Character.create!(name: "The Wildcard", theme_id: alignment.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "https://images.pexels.com/photos/8848555/pexels-photo-8848555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", alignment: 6)

Character.create!(name: "The Tyrant", theme_id: alignment.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "https://images.pexels.com/photos/11064686/pexels-photo-11064686.jpeg?auto=compress&cs=tinysrgb&w=400", alignment: 7)
Character.create!(name: "The Opportunist", theme_id: alignment.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "https://images.pexels.com/photos/3760532/pexels-photo-3760532.jpeg?auto=compress&cs=tinysrgb&w=400", alignment: 8)
Character.create!(name: "The Destroyer", theme_id: alignment.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj5xbzTczBHU2rPVJLBu8rBUqYcqSArUx-M1wwjtxtJQ&usqp=CAU&ec=48600113", alignment: 9)

Playlist.create!(genre: "Rock and Roll", character: "Thurgood Marshall", alignment: "Chaotic Neutral", songs: ["Song 1", "Song 2", "Song 3", "Song 4", "Song 5", "Song 6", "Song 7", "Song 8", "Song 9", "Song 10"])

### Star Wars Quiz ###

star_wars = Theme.create!(name: "Star Wars Character", image_link: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Star_wars2.svg/225px-Star_wars2.svg.png")
# Good/Evil Questions
# 1
Question.create(
  theme_id: star_wars.id,
  question: "You discover that a group of Rebels has planted a bomb in a highly populated area that will kill many innocent people. What do you do?",
  answer_1: "Report the bomb to the authorities and try to stop it from detonating, even if it means siding against the Rebels.",
  answer_2: "Try to negotiate with the Rebels to disarm the bomb peacefully.",
  answer_3: "Attempt to disable the bomb without involving the authorities, risking your own safety.",
  answer_4: "Help the Rebels escape and let the bomb detonate, seeing it as a necessary sacrifice for their cause.",
  answer_5: "Join the Rebels in planting the bomb and actively participate in the attack.",
  good_evil_chaotic_lawful: 0
)
# 2
Question.create(
  theme_id: star_wars.id,
  question: "You are a Jedi who has been sent to negotiate peace between two warring factions. However, you discover that one of the factions has been committing horrific war crimes against civilians. What do you do?",
  answer_1: "Report the faction to the authorities and try to stop their actions, even if it means jeopardizing the peace negotiations.",
  answer_2: "Use your influence to pressure the faction into ending their war crimes, without revealing their actions to the other side.",
  answer_3: "Attempt to mediate a peaceful resolution without directly confronting the faction about their actions.",
  answer_4: "Join the other faction and use the information about the war crimes to gain an advantage in the negotiations.",
  answer_5: "Join the faction and actively participate in their war crimes, seeing it as necessary to win the war.",
  good_evil_chaotic_lawful: 0
)
# 3
Question.create(
  theme_id: star_wars.id,
  question: "You are a smuggler who has been hired to transport illegal weapons to a group of Mandalorians fighting against the Hutts. What do you do?",
  answer_1: "Reject the job outright on moral grounds, fearing the weapons could be used to harm innocent people.",
  answer_2: "Accept the job but only transport the weapons to a third party who will dispose of them safely.",
  answer_3: "Transport the weapons to the Mandalorians, but also alert the New Republic of the transaction.",
  answer_4: "Transport the weapons to the Mandalorians and actively participate in the attack against the Hutts.",
  answer_5: "Steal the weapons and sell them to the Hutts for personal gain.",
  good_evil_chaotic_lawful: 0
)
# 4
Question.create(
  theme_id: star_wars.id,
  question: "You are a bounty hunter hired to capture a notorious criminal. When you find them, they offer you a large sum of money to help them escape the New Republic authorities. Do you:",
  answer_1: "Refuse the offer and turn the criminal over to the New Republic authorities.",
  answer_2: "Take the money but still turn the criminal over to the New Republic authorities.",
  answer_3: "Help the criminal escape but anonymously tip off the New Republic authorities to their whereabouts.",
  answer_4: "Help the criminal escape and then collect your payment without regard for the consequences.",
  answer_5: "Help the criminal escape and then join them as their partner in crime.",
  good_evil_chaotic_lawful: 0
)
# 5
Question.create(
  theme_id: star_wars.id,
  question: "You are a member of a group of Rebels fighting against the Empire. Empire officials are threatening to execute innocent civilians unless your Rebel group surrenders themselves. Do you:",
  answer_1: "Surrender yourself to the authorities to spare the lives of the civilians.",
  answer_2: "Surrender yourself and use the opportunity to assassinate the corrupt leader of the government.",
  answer_3: "Refuse to surrender and try to rescue the civilians yourself.",
  answer_4: "Refuse to surrender and let the civilians be executed.",
  answer_5: "Betray the other Rebels to save your own life.",
  good_evil_chaotic_lawful: 0
)
# 6
Question.create(
  theme_id: star_wars.id,
  question: "You are a Jedi tasked with guarding a powerful artifact that could be used for either great good or great evil. A group of Rebels is seeking to steal the artifact to use it against the Empire, but a Sith Lord has also learned of its existence and seeks to use it to further their own power. Do you:",
  answer_1: "Refuse to let anyone have the artifact and keep it under Jedi protection.",
  answer_2: "Allow the Rebels to take the artifact, as you believe they will use it for good.",
  answer_3: "Destroy the artifact to prevent either side from using it for evil.",
  answer_4: "Allow the Sith Lord to take the artifact, as you believe you can persuade them to use it for good.",
  answer_5: "Take the artifact for yourself and use it to achieve your own goals.",
  good_evil_chaotic_lawful: 0
)
# Lawful/Chaotic Questions
# 1
Question.create(
  theme_id: star_wars.id,
  question: "You are part of a team assigned to complete a mission for the Rebel Alliance. Your commanding officer has given you a direct order that conflicts with the best chance for success. What do you do?",
  answer_1: "Follow the direct orders of your commanding officer, as it is your duty to follow the chain of command.",
  answer_2: "Confront your commanding officer about the order and try to come up with a compromise that maximizes the chances of success.",
  answer_3: "Follow the order, but secretly make arrangements to ensure the success of the mission.",
  answer_4: "Disobey the order and follow the plan that offers the best chance for success, even if it means going against your commanding officer's orders.",
  answer_5: "Take matters into your own hands and pursue the plan you think will achieve success, regardless of the consequences or orders given.",
  good_evil_chaotic_lawful: 1
)
# 2
Question.create(
  theme_id: star_wars.id,
  question: "You are on a team of Jedi that have been entrusted with a valuable item that is needed for an important mission. A member of the Jedi Council asks to borrow it for personal reasons. What do you do?",
  answer_1: "Refuse to lend it, as it could jeopardize the mission and the team's success.",
  answer_2: "Lend it with the expectation that it will be returned promptly and used only for mission-related purposes.",
  answer_3: "Lend it only if the Jedi Council member agrees to use it for mission-related purposes and returns it promptly.",
  answer_4: "Lend it without any conditions or expectations, trusting that the Jedi Council member will use it responsibly.",
  answer_5: "Give it to the Jedi Council member, regardless of the consequences for the mission, as their personal needs are more important.",
  good_evil_chaotic_lawful: 1
)
# 3
Question.create(
  theme_id: star_wars.id,
  question: "You are a member of a group of bounty hunters. Your group is hired to capture a Trandoshan war lord, dead or alive. When you finally locate the Trandoshan, they are accompanied by a young child who appears to be their own child. What do you do?",
  answer_1: "Capture both the Trandoshan and the child and turn them over to the authorities, as it is your duty to follow the contract terms.",
  answer_2: "Capture the Trandoshan but leave the child unharmed, as you have no quarrel with the child.",
  answer_3: "Allow the Trandoshan and the child to escape, as you do not want to harm the child or involve yourself in an unnecessary conflict.",
  answer_4: "Capture the Trandoshan and sell the child into slavery, as you see it as a profitable opportunity.",
  answer_5: "Help the Trandoshan and the child escape and join them on the run, as you sympathize with their situation and see an opportunity to form an alliance.",
  good_evil_chaotic_lawful: 1
)
# 4
Question.create(
  theme_id: star_wars.id,
  question: "You are a Jedi Knight. Your Padawan is discovered to be secretly studying the dark side of the Force. What do you do?",
  answer_1: "Report the Padawan to the Jedi Council for disciplinary action.",
  answer_2: "Confront the Padawan and try to reason with them to stop their studies.",
  answer_3: "Keep a close eye on the Padawan's studies and intervene only if they cross a line.",
  answer_4: "Mentor the Padawan to help them overcome their curiosity.",
  answer_5: "Secretly aid the Padawan's studies and help them harness their power for good.",
  good_evil_chaotic_lawful: 1
)
# 5
Question.create(
  theme_id: star_wars.id,
  question: "You are in charge of a group of Rebels. A member of your group is suspected of betraying the cause to the Empire. What do you do?",
  answer_1: "Hold a trial to determine the member's guilt and act accordingly, but risk exposing the group's secrets.",
  answer_2: "Confront the member and try to get them to confess to their betrayal, but risk alienating other members who might have doubts about the cause.",
  answer_3: "Keep an eye on the member but give them the benefit of the doubt until more evidence is found, but risk jeopardizing the group's safety.",
  answer_4: "Exile the member from the group to prevent any further damage, but risk losing valuable intel.",
  answer_5: "Kill the member immediately without a trial or evidence, but risk betraying the very values that the group stands for.",
  good_evil_chaotic_lawful: 1
)
# 6
Question.create(
  theme_id: star_wars.id,
  question: "You are a leader of a planet that has been invaded by the Empire. The Empire offers you a deal: surrender and allow them to take control peacefully or fight and risk the total destruction of your planet. What do you do?",
  answer_1: "Surrender peacefully to protect the lives of your people, but risk becoming a pawn of the Empire.",
  answer_2: "Try to negotiate with the Empire for better terms before surrendering, but risk appearing weak and losing the respect of your people.",
  answer_3: "Rally the people to fight against the Empire and risk the destruction of your planet, but risk causing the death of many innocent people.",
  answer_4: "Pretend to surrender but secretly plot to overthrow the Empire from within, but risk being discovered and causing even more harm to your people.",
  answer_5: "Join the Empire and become their loyal servant in exchange for your people's safety, but risk betraying your own principles and morals.",
  good_evil_chaotic_lawful: 1
)
# Character Creation
Character.create!(name: "Luke Skywalker", theme_id: star_wars.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/commons/6/67/Luke_Skywalker_-_Welcome_Banner_%28Cropped%29.jpg", alignment: 1)
Character.create!(name: "Leia Organa", theme_id: star_wars.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/en/1/1b/Princess_Leia%27s_characteristic_hairstyle.jpg?20190831062334", alignment: 2)
Character.create!(name: "Han Solo", theme_id: star_wars.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/b/be/Han_Solo_depicted_in_promotional_image_for_Star_Wars_%281977%29.jpg", alignment: 3)

Character.create!(name: "C-3PO", theme_id: star_wars.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/5/5c/C-3PO_droid.png?20180102220614", alignment: 4)
Character.create!(name: "Boba Fett", theme_id: star_wars.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/en/3/3e/FettbobaJB.png?20100126122410", alignment: 5)
Character.create!(name: "Lando Calrissian", theme_id: star_wars.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/c/cb/Lando6-2.jpg?20171217221509", alignment: 6)

Character.create!(name: "Darth Vader", theme_id: star_wars.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/0/0b/Darth_Vader_in_The_Empire_Strikes_Back.jpg?20211020000259", alignment: 7)
Character.create!(name: "Emperor Palpatine", theme_id: star_wars.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/en/8/8f/Emperor_RotJ.png?20130207121428", alignment: 8)
Character.create!(name: "Jabba the Hutt", theme_id: star_wars.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/5/53/Jabba_the_Hutt_in_Return_of_the_Jedi_%281983%29.png?20171220071330", alignment: 9)

### Harry Potter Quiz ###
harry_potter = Theme.create!(name: "Harry Potter Character", url: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Harry_Potter_wordmark.svg/1280px-Harry_Potter_wordmark.svg.png")
# Good/Evil Questions
# 1
Question.create(
  theme_id: harry_potter.id,
  question: "You have been given a magical potion that can grant you immense magical power, but it requires the sacrifice of a life to create. What do you do?",
  answer_1: "Refuse to use the potion and report it to the authorities.",
  answer_2: "Consider using the potion, but only after exploring other avenues to gain power.",
  answer_4: "Use the potion to gain power, but only if the person sacrificed is evil or has committed heinous crimes.",
  answer_3: "Drink the potion and use your newfound power to make the world a better place.",
  answer_5: "Use the potion without hesitation to gain power and achieve your goals.",
  good_evil_chaotic_lawful: 0
)
# 2
Question.create(
  theme_id: harry_potter.id,                                     
  question: "A fellow student is struggling with their History of Magic studies. How do you respond?",
  answer_1: "Offer to tutor them and help them improve their grades.",
  answer_2: "Encourage them to seek help from their professors or school resources.",
  answer_3: "Give them tips and tricks to help them study more effectively.",
  answer_5: "Offer to help them study, but only if they agree to do something for you in return",
  answer_4: "Help them study, but only to make yourself look good in front of the professor.",
  good_evil_chaotic_lawful: 0
)
# 3
Question.create(
  theme_id: harry_potter.id,                                     
  question: "You are attending Hogwarts School of Witchcraft and Wizardry, and one of your classmates is being bullied by a group of older Slytherins. What do you do?",
  answer_1: "Stand up for the classmate and report the bullies to the headmaster.",
  answer_2: "Try to reason with the bullies and convince them to stop.",
  answer_3: "Stay out of it and hope someone else intervenes.",
  answer_4: "Use magic to get revenge on the bullies and protect the classmate.",
  answer_5: "Join the bullies to avoid becoming a target yourself.",
  good_evil_chaotic_lawful: 0
)
# 4
Question.create(
  theme_id: harry_potter.id,                                     
  question: "You witness a fellow student using dark magic. How do you respond?",
  answer_1: "Confront the student and report their actions to professors, but also offer to help turn away from dark magic",
  answer_2: "Confront the student and try to talk them out of it.",
  answer_3: "Try to understand their reasons for using dark magic and offer guidance.",
  answer_4: "Stay out of it and hope that they will stop on their own.",
  answer_5: "Offer to teach them how to use dark magic more responsibly, with the hope of steering them towards a more balanced approach to magic.",
  good_evil_chaotic_lawful: 0
)
# 5
Question.create(
  theme_id: harry_potter.id,                                     
  question: "You have the opportunity to cheat on a difficult potions exam. What do you do?",
  answer_1: "Study hard and try your best to pass without cheating.",
  answer_2: "Ask for help from a fellow student or house prefect.",
  answer_3: "Use a small cheat parchment to help you remember important information.",
  answer_4: "Copy off of someone else's exam parchment.",
  answer_5: "Use magic to cheat without getting caught.",
  good_evil_chaotic_lawful: 0
)
# 6
Question.create(
  theme_id: harry_potter.id,                                     
  question: "While wandering around Hogwarts, you come across a secret room that is rumored to contain a powerful magical artifact. What do you do?",
  answer_1: "Report the discovery to the headmaster and ask for guidance.",
  answer_2: "Leave the artifact untouched, as it may be cursed or bring about unwanted consequences.",
  answer_3: "Investigate the room, but only take the artifact if it is necessary to protect yourself or others.",
  answer_4: "Take the artifact without hesitation, as you are confident that it will give you the power you need to accomplish your goals.",
  answer_5: "Take the artifact and sell it on the black market in Knockturn Ally to the highest bidder.",
  good_evil_chaotic_lawful: 0
)
# Lawful/Chaotic Questions
# 1
Question.create(
  theme_id: harry_potter.id,
  question: "You are a professor at Hogwarts who has been tasked with punishing a student who broke school rules. What do you do?",
  answer_1: "Strictly enforce the rules and assign severe punishment, regardless of the circumstances.",
  answer_2: "Enforce the rules, but take into consideration the student's motives and circumstances when assigning punishment.",
  answer_3: "Consider the student's intentions and motives first, and then assign a punishment that is appropriate.",
  answer_4: "Ignore the infraction altogether and let the student off the hook, reasoning that rules are meant to be broken.",
  answer_5: "Use the situation as an opportunity to teach the student a valuable lesson about the importance of following rules, but be lenient in the punishment.",
  good_evil_chaotic_lawful: 1
)
# 2
Question.create(
  theme_id: harry_potter.id,
  question: "You are a wizard who has the rare power to control the minds of others. What do you do with this power?",
  answer_1: "Use it to enforce order and control over others, even if it means infringing on their personal freedoms.",
  answer_2: "Use it only in situations where it is necessary, such as in self-defense or to prevent harm to others.",
  answer_3: "Refuse to use this power at all, as it violates the principles of free will and personal autonomy.",
  answer_4: "Use it sparingly, and only with the consent of the person being controlled.",
  answer_5: "Use it frequently to manipulate others to your advantage, regardless of the consequences.",
  good_evil_chaotic_lawful: 1
)
# 3
Question.create(
  theme_id: harry_potter.id,
  question: "You are offered a powerful and illegal potion that will give you an edge in your magical studies. What do you do?",
  answer_1: "Refuse the potion and report the person offering it to the professors.",
  answer_2: "Politely refuse the potion and walk away.",
  answer_3: "Consider taking the potion but ultimately decide against it.",
  answer_4: "Take the potion, but don't use it immediately.",
  answer_5: "Take the potion and use it without hesitation.",
  good_evil_chaotic_lawful: 1
)
# 4
Question.create(
  theme_id: harry_potter.id,
  question: "You have been given a powerful magical artifact that could be used for good or evil. What do you do with it?",
  answer_1: "Destroy it to prevent anyone from using it for evil, but risk losing the potential good it could bring.",
  answer_2: "Keep it hidden and never use it, but risk it falling into the wrong hands.",
  answer_3: "Sell it to the highest bidder and let them decide its fate, but risk it being used for evil.",
  answer_4: "Use it to bring about a better world, even if it means using morally questionable methods.",
  answer_5: "Use it for personal gain, but only if it doesn't harm innocent people.",
  good_evil_chaotic_lawful: 1 
)
# 5
Question.create(
  theme_id: harry_potter.id,
  question: "You discover that a Hogwarts professor has been using their power to bully and intimidate students. What do you do?",
  answer_1: "Report the professor to the Headmaster or Headmistress immediately.",
  answer_2: "Confront the professor and try to convince them to stop their behavior.",
  answer_3: "Ignore the behavior, reasoning that you don't want to get involved.",
  answer_4: "Gather evidence against the professor and blackmail them into changing their behavior.",
  answer_5: "Use the professor's behavior to your advantage, either by getting special treatment or by causing trouble.",
  good_evil_chaotic_lawful: 1
)
# 6
Question.create(
  theme_id: harry_potter.id,
  question: "A classmate has been spreading rumors about you, causing other students to treat you unfairly. What do you do?",
  answer_1: "Report the classmate to a professor or Head of House for disciplinary action.",
  answer_2: "Confront the classmate and try to convince them to stop spreading rumors.",
  answer_3: "Try to ignore the rumors and hope they'll die down on their own.",
  answer_4: "Spread rumors about the classmate in return, but only if it means protecting yourself from further harm.",
  answer_5: "Seek revenge on the classmate, even if it means causing them serious harm.",
  good_evil_chaotic_lawful: 1
)
# Character Creation
Character.create!(name: "Hermione Granger", theme_id: harry_potter.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Hermione_Granger_poster.jpg/220px-Hermione_Granger_poster.jpg", alignment: 1)
Character.create!(name: "Harry Potter", theme_id: harry_potter.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/en/thumb/d/d7/Harry_Potter_character_poster.jpg/220px-Harry_Potter_character_poster.jpg", alignment: 2)
Character.create!(name: "Ron Weasley", theme_id: harry_potter.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/thumb/5/5e/Ron_Weasley_poster.jpg/220px-Ron_Weasley_poster.jpg", alignment: 3)

Character.create!(name: "Severous Snape", theme_id: harry_potter.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/thumb/b/b9/Ootp076.jpg/220px-Ootp076.jpg", alignment: 4)
Character.create!(name: "Hedwig", theme_id: harry_potter.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/The_Making_of_Harry_Potter_29-05-2012_%28Hedwig%29.jpg/150px-The_Making_of_Harry_Potter_29-05-2012_%28Hedwig%29.jpg", alignment: 5)
Character.create!(name: "Gilderoy Lockhart", theme_id: harry_potter.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "https://static.wikia.nocookie.net/harrypotter/images/d/d4/Gilderoy_Lockhart_COS_promo.jpg/revision/latest?cb=20160905192348", alignment: 6)

Character.create!(name: "Voldemort", theme_id: harry_potter.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/Lordvoldemort.jpg/220px-Lordvoldemort.jpg", alignment: 7)
Character.create!(name: "Lucius Malfoy", theme_id: harry_potter.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "https://static.wikia.nocookie.net/harrypotter/images/b/b4/Lucius_Malfoy_BoH.png/revision/latest/scale-to-width-down/338?cb=20190604135420", alignment: 8)
Character.create!(name: "Bellatrix Lestrange", theme_id: harry_potter.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/d/d8/Bellatrix.jpeg", alignment: 9)

### Lord of the Rings Quiz ###
lotr = Theme.create!(name: "Lord of the Rings Character", image_link: "https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/The_Lord_of_the_Rings_%281997%29_theatrical_poster.jpg/220px-The_Lord_of_the_Rings_%281997%29_theatrical_poster.jpg")
# Good/Evil Questions
# 1
Question.create(
  theme_id: lotr.id,
  question: "You stumble across a small, abandoned village in the wilderness. You notice a stash of food and supplies that could be useful to you on your journey, but you also know that taking them would leave the villagers with nothing. What do you do?",
  answer_1: "Leave the supplies untouched and move on.",
  answer_2: "Take only what you need and leave the rest for the villagers.",
  answer_3: "Take the supplies and leave some gold or other items in exchange as payment.",
  answer_4: "Take the supplies for yourself, they will help you on your journey.",
  answer_5: "Take the supplies and leave behind a note warning other travelers not to rely on the village for aid.",
  good_evil_chaotic_lawful: 0
)
# 2
Question.create(
  theme_id: lotr.id,
  question: "You come across a wounded hobbit on the side of the road. They tell you they were attacked by a group of orcs and beg for your help. What do you do?",
  answer_1: "Help the hobbit, as it is the right thing to do.",
  answer_2: "Help the hobbit, but only if they can pay you for your services.",
  answer_3: "Ignore the hobbit and continue on your journey.",
  answer_4: "Help the hobbit, but steal some of their possessions while they are unconscious.",
  answer_5: "Help the hobbit, but secretly lead them into an ambush to steal their possessions.",
  good_evil_chaotic_lawful: 0
  )
# 3
Question.create(
  theme_id: lotr.id,
  question: "You come across a powerful artifact that could be used to defeat the dark lord and save Middle-earth. However, using the artifact would require sacrificing the life of a close friend. What do you do?",
  answer_1: "Refuse to use the artifact and find another way to defeat the dark lord.",
  answer_2: "Consider using the artifact, but ultimately refuse to sacrifice your friend.",
  answer_4: "Use the artifact to defeat the dark lord, but find a way to bring your friend back to life afterwards.",
  answer_3: "Use the artifact to defeat the dark lord, even if it means sacrificing your friend.",
  answer_5: "Use the artifact to defeat the dark lord, but also use it to gain more power and control over Middle-earth.",
  good_evil_chaotic_lawful: 0
)
# 4
Question.create(
  theme_id: lotr.id,
  question: "You are part of a group of adventurers who have been tasked with retrieving a powerful artifact from the Mines of Moria. However, a dwarf in your group is injured and cannot continue. What do you do?",
  answer_1: "Fallback and carry the injured dwarf out of the mines.",
  answer_3: "Decide to set up camp and wait for the injured dwarf to recover before continuing with the mission.",
  answer_4: "Split the group up, with some members continuing on with the mission and others staying behind to care for the injured friend.",
  answer_2: "Take the dwarf with you, but be prepared to abandon them if their injuries slow the group down too much",
  answer_5: "Leave the injured dwarf behind with some provisions and a map, hoping they will make it out alive",
  good_evil_chaotic_lawful: 0
  )
# 5
Question.create(
  theme_id: lotr.id,
  question: "You are a powerful wizard who has the ability to control the minds of others. A group of travelers comes to you seeking guidance and protection. What do you do?",
  answer_1: "Offer your guidance and protection to the travelers, but be upfront with them about the fact that you have mind-control powers and vow not to use them on them unless it is absolutely necessary.",
  answer_4: "Consider using your mind control abilities, but ultimately decide not to use them, recognizing the dangers and ethical concerns involved.",
  answer_2: "Use your powers to help the travelers, but only to the extent that it does not infringe on their free will or agency.",
  answer_3: "Use your mind-control powers to ensure that the travelers stay safe and follow your instructions, believing that it is for their own good.",
  answer_5: "Use your mind control abilities to make the travelers your loyal followers, without their knowledge or consent",
  good_evil_chaotic_lawful: 0
)
# 6
Question.create(
  theme_id: lotr.id,
  question: "You come across a small village that is being terrorized by a band of orcs. The villagers ask for your help in driving off the orcs. What do you do?",
  answer_1: "Help the villagers defend their homes and drive off the orcs, ensuring their safety and well-being.",
  answer_2: "Agree to help the villagers, but demand payment for your services before taking action.",
  answer_3: "Negotiate with the orcs, seeking a peaceful solution that satisfies both parties.",
  answer_4: "Offer to help the orcs in exchange for leaving the village alone, even if it means abandoning the villagers.",
  answer_5: "Side with the orcs and join in their attack on the village, taking advantage of the chaos for your own gain.",
  good_evil_chaotic_lawful: 0
)
# Lawful/Chaotic Questions
# 1
Question.create(
  theme_id: lotr.id,
  question: "You discover that a friend has been stealing carrots from Farmer Maggot's fields. You know that if you report them to the authorities, they will be punished severely. What do you do?",
  answer_1: "Report them to the authorities, as stealing is a crime.",
  answer_2: "Confront them and try to convince them to stop stealing.",
  answer_3: "Ignore the situation and go about your business.",
  answer_4: "Help your friend steal more carrots, but only if you get some of the tasty carrots.",
  answer_5: "Use your friend's theft to your own advantage, even if it means putting innocent people in danger.",
  good_evil_chaotic_lawful: 1
)
# 2
Question.create(
  theme_id: lotr.id,
  question: "You discover that a group of dwarves are planning a rebellion against the ruling government of Gondor. You know that their cause is just, but Gondor will not take kindly to the uprising. What do you do?",
  answer_1: "Join Gondor's side and fight against the rebellion.",
  answer_2: "Support Gondor for a reward.",
  answer_3: "Stay neutral and do not get involved in the conflict.",
  answer_4: "Support the rebellion, but from a distance so as not to be caught by Gondor.",
  answer_5: "Join the rebellion and fight for their cause.",
  good_evil_chaotic_lawful: 1
)
# 3
Question.create(
  theme_id: lotr.id,
  question: "A group of men have come to your land seeking refuge, but they are being hunted by orcs. What do you do?",
  answer_1: "Offer them protection and shelter, no matter the cost to yourself or your people.",
  answer_2: "Allow them to stay, but only if they agree to fight alongside your people against the orcs.",
  answer_3: "Offer them temporary shelter and assistance, but make it clear they must leave eventually.",
  answer_4: "Turn them away, as you cannot risk bringing the enemy's attention to your land.",
  answer_5: "Betray them to the enemy, in exchange for a reward or to avoid conflict.",
  good_evil_chaotic_lawful: 1
)
# 4
as a Ruby object:
Question.create(
  theme_id: lotr.id,
  question: "You have been captured by orcs and are being interrogated for information about the One Ring. What do you do?",
  answer_1: "Refuse to cooperate, even if it means enduring torture or death.",
  answer_2: "Cooperate to some extent, but try to mislead your captors whenever possible.",
  answer_3: "Cooperate, believing that it is the only way to stay alive.",
  answer_4: "Cooperate eagerly, believing that you can use the situation to your advantage.",
  answer_5: "Betray your allies but give your captors false information in exchange for your life.",
  good_evil_chaotic_lawful: 1
)
# 5
Question.create(
  theme_id: lotr.id,
  question: "You are on a mission to destroy the One Ring, but you discover that innocent people will be killed in the process. What do you do?",
  answer_1: "Refuse to carry out the mission and risk the wrath of your companions.",
  answer_2: "Attempt to convince your companions to change their plans.",
  answer_3: "Carry out the mission as ordered, but try to find a way to protect the innocent.",
  answer_4: "Carry out the mission eagerly, believing that the end justifies the means.",
  answer_5: "Carry out the mission, but take the opportunity to betray your companions to their Sauron.",
  good_evil_chaotic_lawful: 1
)
# 6
Question.create(
  theme_id: lotr.id,
  question: "You have been offered a palantír, a powerful artifact that could give you great knowledge and influence. What do you do?",
  answer_1: "Refuse the palantír, believing that it is too dangerous to possess.",
  answer_2: "Take the palantír, but only with the intention of using it for the greater good.",
  answer_3: "Take the palantír, but only with the intention of using it for your own personal gain.",
  answer_4: "Take the palantír eagerly, believing that you are entitled to it.",
  answer_5: "Take the palantír and use it to gain power over others, regardless of the consequences.",
  good_evil_chaotic_lawful: 1
)
# Character Creation
Character.create!(name: "Aragorn", theme_id: lotr.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/thumb/3/35/Aragorn300ppx.png/170px-Aragorn300ppx.png", alignment: 1)
Character.create!(name: "Frodo", theme_id: lotr.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/en/thumb/4/4e/Elijah_Wood_as_Frodo_Baggins.png/170px-Elijah_Wood_as_Frodo_Baggins.png", alignment: 2)
Character.create!(name: "Samwise", theme_id: lotr.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "https://static.wikia.nocookie.net/pjmidearthfilms/images/9/9d/Samwise_the_Brave.jpg/revision/latest/scale-to-width-down/350?cb=20201005101149", alignment: 3)

Character.create!(name: "Boromir", theme_id: lotr.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "https://static.wikia.nocookie.net/pjmidearthfilms/images/b/b4/Seanbean_boromir.jpg/revision/latest?cb=20150513011509", alignment: 4)
Character.create!(name: "Treebeard", theme_id: lotr.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "https://static.wikia.nocookie.net/pjmidearthfilms/images/6/67/Treebeard_ROTK_1.png/revision/latest/scale-to-width-down/350?cb=20211030072336", alignment: 5)
Character.create!(name: "Gollum", theme_id: lotr.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "https://static.wikia.nocookie.net/pjmidearthfilms/images/e/e1/Gollum_Render.png/revision/latest?cb=20151102075339", alignment: 6)

Character.create!(name: "Sauron", theme_id: lotr.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "https://static.wikia.nocookie.net/pjmidearthfilms/images/9/90/Sauron-2.jpg/revision/latest?cb=20190217072058", alignment: 7)
Character.create!(name: "Saruman", theme_id: lotr.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "https://static.wikia.nocookie.net/pjmidearthfilms/images/0/0c/Christopher_Lee_as_Saruman.jpg/revision/latest?cb=20190314151146", alignment: 8)
Character.create!(name: "Balrog", theme_id: lotr.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "https://static.wikia.nocookie.net/pjmidearthfilms/images/c/c4/Balrog_-_FOTR.png/revision/latest/scale-to-width-down/241?cb=20200706113151", alignment: 9)