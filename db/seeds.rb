### Lawyer Quiz ###

lawyer = Theme.create!(name: "lawyer", image_link: "https://images.pexels.com/photos/3771097/pexels-photo-3771097.jpeg")
# Good/Evil Questions
# 1
Question.create(
  theme_id: 1,                                     
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
  theme_id: 1, 
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
  theme_id: 1, 
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
  theme_id: 1, 
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
  theme_id: 1, 
  question: "You discover that a fellow attorney has been knowingly providing false evidence in court. How do you respond?", 
  answer_1: "Report the attorney to the appropriate authorities immediately.", 
  answer_2: "Confront the attorney privately and give them a chance to correct their actions.", 
  answer_3: "Stay silent but distance yourself from the attorney professionally.", 
  answer_4: "IKeep quiet, as you believe that everyone deserves a zealous defense.", 
  answer_5: "Use the information to blackmail the attorney for personal gain.", 
  good_evil_chaotic_lawful: 0
)
# 6
Question.create!(
  theme_id: 1, 
  question: "Your firm is representing a client who is known for their philanthropy, but you discover they are involved in illegal activities. How do you handle the situation?", 
  answer_1: "IAdvise the client to end their illegal activities and make amends.", 
  answer_2: "Continue representing the client but encourage them to change their ways.", 
  answer_3: "Ignore the illegal activities and focus on the client's philanthropic efforts.", 
  answer_4: " Use the client's illegal activities to your advantage in negotiations.", 
  answer_5: "IEncourage the client to expand their illegal activities for mutual benefit.", 
  good_evil_chaotic_lawful: 0
)
# Lawful/Chaotic Questions
# 1
Question.create(
  theme_id: 1,                                                
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
  theme_id: 1, 
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
  theme_id: 1, 
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
  theme_id: 1, 
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
  theme_id: 1, 
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
  theme_id: 1, 
  question: "You discover a technicality that could potentially get your guilty client acquitted. What do you do?", 
  answer_1: "Ignore the technicality, as your client should face the consequences of their actions.", 
  answer_2: "Present the technicality in court and let the judge decide its significance.", 
  answer_3: "Use the technicality to negotiate a plea deal with reduced charges.", 
  answer_4: "Exploit the technicality to the fullest extent to secure your client's acquittal.", 
  answer_5: "Use the technicality to manipulate the legal process and undermine the prosecution's case.", 
  good_evil_chaotic_lawful: 1
)
# Character Creation
Character.create!(name: "Thurgood Marshall", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Thurgood-marshall-2.jpg/220px-Thurgood-marshall-2.jpg", alignment: 1)
Character.create!(name: "Amal Clooney", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Amal_Clooney_02.jpg/1280px-Amal_Clooney_02.jpg", alignment: 2)
Character.create!(name: "Clarence Darrow", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Clarence_Darrow.jpg/800px-Clarence_Darrow.jpg", alignment: 3)

Character.create!(name: "Jack McCoy", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/7/72/Jack_McCoy_-_L%26O.png", alignment: 4)
Character.create!(name: "Robert Shapiro", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/commons/b/b4/Robert-shapiro.jpg", alignment: 5)
Character.create!(name: "Saul Goodman", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/3/34/Jimmy_McGill_BCS_S3.png", alignment: 6)

Character.create!(name: "Roy Cohn", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Roy_Cohn.jpg/463px-Roy_Cohn.jpg", alignment: 7)
Character.create!(name: "Michael Cohen", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/commons/b/ba/Michael_Cohen_in_2019.png", alignment: 8)
Character.create!(name: "John Milton", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/commons/9/91/John-milton.jpg", alignment: 9)

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
Character.create!(name: "Lawful Good", theme_id: alignment.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 1)
Character.create!(name: "Neutral Good", theme_id: alignment.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 2)
Character.create!(name: "Chaotic Good", theme_id: alignment.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 3)

Character.create!(name: "Lawful Neutral", theme_id: alignment.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 4)
Character.create!(name: "True Neutral", theme_id: alignment.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 5)
Character.create!(name: "Chaotic Neutral", theme_id: alignment.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 6)

Character.create!(name: "Lawful Evil", theme_id: alignment.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 7)
Character.create!(name: "Neutral Evil", theme_id: alignment.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 8)
Character.create!(name: "Chaotic Evil", theme_id: alignment.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "https://upload.wikimedia.org/wikipedia/en/f/f7/RickRoll.png", alignment: 9)