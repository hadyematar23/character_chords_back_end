Theme.destroy_all
Character.destroy_all
Question.destroy_all
Theme.destroy_all

### Debugging Quiz -- REMOVE BEFORE FINAL PROD ###

debug = Theme.create!(title: "Debugging Test", name: "Debugger Test!!", image_link: nil, s3_key: "DebugTheme.jpeg")
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
Character.create!(name: "Lawful Good", theme_id: debug.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, s3key: "RickRoll.png", alignment: 1, description: "This is a description of the character")
Character.create!(name: "Neutral Good", theme_id: debug.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, s3key: "RickRoll.png", alignment: 2, description: "This is a description of the character")
Character.create!(name: "Chaotic Good", theme_id: debug.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, s3key: "RickRoll.png", alignment: 3, description: "This is a description of the character")

Character.create!(name: "Lawful Neutral", theme_id: debug.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, s3key: "RickRoll.png", alignment: 4, description: "This is a description of the character")
Character.create!(name: "True Neutral", theme_id: debug.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, s3key: "RickRoll.png", alignment: 5, description: "This is a description of the character")
Character.create!(name: "Chaotic Neutral", theme_id: debug.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: "RickRoll.png", alignment: 6, description: "This is a description of the character")

Character.create!(name: "Lawful Evil", theme_id: debug.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, s3key: "RickRoll.png", alignment: 7, description: "This is a description of the character")
Character.create!(name: "Neutral Evil", theme_id: debug.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, s3key: "RickRoll.png", alignment: 8, description: "This is a description of the character")
Character.create!(name: "Chaotic Evil", theme_id: debug.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, s3key: "RickRoll.png", alignment: 9, description: "This is a description of the character")

### Lawyer Quiz ###

lawyer = Theme.create!(title: "Want To Know Which Famous Lawyer You're Most Like? Take This Quiz And Achieve Ultimate Enlightenment!", name: "lawyer", image_link: nil, s3_key: "LawyerTheme.jpeg")
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
Character.create!(name: "Thurgood Marshall", theme_id: lawyer.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/ThurgoodMarshall.jpeg', alignment: 1, description: "You are Thurgood Marshall, the legendary civil rights attorney and Supreme Court Justice. You are a champion of justice, always working to ensure that everyone has access to the same rights and freedoms. Your unwavering commitment to justice often puts you at odds with people who are unwilling to change, but your sense of fairness never waivers.")
Character.create!(name: "Amal Clooney", theme_id: lawyer.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/AmalClooney.jpeg', alignment: 2, description: "You are Amal Clooney, a lawyer and activist who is a force to be reckoned with. You are a shining example of what it means to be a champion of justice and will fight for what is right no matter the odds.")
Character.create!(name: "Clarence Darrow", theme_id: lawyer.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/ClarenceDarrow.jpeg', alignment: 3, description: "As Clarence Darrow, you embody the chaotic good alignment, driven by a passion for individual freedom and a desire to fight against injustice, even if it means breaking rules or challenging authority, always standing up for what you believe is right and never backing down from a challenge, and ultimately serving as a force for good in pursuit of a more just and equitable society." )

Character.create!(name: "Jack McCoy", theme_id: lawyer.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/JackMccoy.jpeg', alignment: 4, description: "You are Jack McCoy, a lawful neutral character. You are a master of the courtroom and an expert at finding loopholes. You make sure justice is served and the law is followed, but you often do so with a bit of mischief and humor. You are a master of strategy and can outwit even the most cunning opponent. It may take a few rounds to get your point across, but in the end, you always get your way." )
Character.create!(name: "Robert Shapiro", theme_id: lawyer.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/RobertShapiro.jpeg', alignment: 5, description: "You are Robert Shapiro (O.J. Simpson's lawyer), a true neutral. You are a master of the legal system and you have a knack of knowing where the loopholes are. You are never swayed by emotions and you always strive for a fair and reasonable outcome. You are an independent thinker and you have no problem standing up for what you believe in.")
Character.create!(name: "Saul Goodman AKA Slippin' Jimmy", theme_id: lawyer.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/SaulGoodman.webp', alignment: 6, description: "You are Saul Goodman (fictional lawyer from Breaking Bad), you have a penchant for bending the law to suit your own needs, and you're always looking for a way to make a quick buck. You don't always play fair and you're not afraid to do whatever it takes to get what you want. You'll never turn down a challenge, and you're always ready to take a risk. Just don't be surprised if things don't always go your way.")

Character.create!(name: "Roy Cohn", theme_id: lawyer.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LawyerCharacters/RoyCohn.webp', alignment: 7, description: "You are Roy Cohn, a ruthless, cunning and manipulative individual who will stop at nothing to achieve your goals. You follow the letter of the law but will bend it to your own advantage. You are a master of deception and an expert at finding loopholes in any situation. You will never accept defeat, no matter how dire the consequences")
Character.create!(name: "Michael Cohen", theme_id: lawyer.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LawyerCharacters/MichaelCohen.jpeg', alignment: 8, description: "You are Michael Cohen, a corporate lawyer who always looks out for himself first. You always make sure your own interests are taken care of, no matter the cost to others. You're a master of manipulation and deception, and you have no qualms about using people to your own advantage.")
Character.create!(name: "Rudy Guiliani", theme_id: lawyer.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LawyerCharacters/RudyGuiliani.jpeg', alignment: 9, description: "The master of chaotic evil, where eyebrow-raising press conferences, baseless conspiracy theories, and Four Seasons Total Landscaping mix for a potent cocktail of public disorder.")

### Generic Quiz ###

alignment = Theme.create!(title:"Discover Your True Nature With This Fun DnD Alignment Quiz", name: "alignment", image_link: nil, s3_key: "AlignmentTheme.png")
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
Character.create!(name: "The Hero", theme_id: alignment.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, s3key: 'GenericCharacters/LawfulGood.webp', alignment: 1, description: "This is a description of the character")
Character.create!(name: "The Ally", theme_id: alignment.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, s3key: 'GenericCharacters/AllyImage.webp', alignment: 2, description: "This is a description of the character")
Character.create!(name: "The Rebel", theme_id: alignment.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, s3key: 'GenericCharacters/RebelImage.jpeg',  alignment: 3, description: "This is a description of the character")

Character.create!(name: "The Judge", theme_id: alignment.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, s3key: 'GenericCharacters/JudgeCharacter.webp', alignment: 4, description: "This is a description of the character")
Character.create!(name: "The Observer", theme_id: alignment.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, s3key: 'GenericCharacters/ObserverTheme.jpeg', alignment: 5, description: "This is a description of the character")
Character.create!(name: "The Wildcard", theme_id: alignment.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: 'GenericCharacters/WildCardTheme.jpeg', alignment: 6, description: "This is a description of the character")

Character.create!(name: "The Tyrant", theme_id: alignment.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, s3key: 'GenericCharacters/TyrantImage.jpeg', alignment: 7, description: "This is a description of the character")
Character.create!(name: "The Opportunist", theme_id: alignment.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, s3key: 'GenericCharacters/OpportunistTheme.jpeg', alignment: 8, description: "This is a description of the character")
Character.create!(name: "The Destroyer", theme_id: alignment.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, s3key: 'GenericCharacters/DestroyerTheme.jpeg', alignment: 9, description: "This is a description of the character")

Playlist.create!(genre: "Rock and Roll", character: "Thurgood Marshall", alignment: "Chaotic Neutral", songs: ["Song 1", "Song 2", "Song 3", "Song 4", "Song 5", "Song 6", "Song 7", "Song 8", "Song 9", "Song 10"])

### Star Wars Quiz ###

star_wars = Theme.create!(title: "May The Force Be With You: Discover Your Inner Star Wars Character With This Quiz", name: "Star Wars Character", image_link: nil, s3_key: "StarWarsTheme.png")
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
Character.create!(name: "Luke Skywalker", theme_id: star_wars.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, s3key: 'StarWarsCharacters/Skywalker.jpeg', alignment: 1, description: "You are Luke Skywalker, a noble knight who is always willing to put the needs of others before your own. You value honor and integrity above all else, and will fight for what is right no matter the cost. You are a loyal and trusted friend, and always strive to do what is best for those you care about.")
Character.create!(name: "Leia Organa", theme_id: star_wars.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, s3key: 'StarWarsCharacters/Leia.jpeg', alignment: 2, description: "You are a person of great compassion and understanding. You are always looking out for the good of others and are willing to sacrifice yourself for the greater good. You are fair and just, and you have a strong sense of right and wrong. You have a strong moral compass and will do what is necessary to protect the innocent. You are an optimist who believes that good will ultimately prevail.")
Character.create!(name: "Han Solo", theme_id: star_wars.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, s3key: 'StarWarsCharacters/HanSolo.jpeg', alignment: 3, description: "You are a rebellious, independent spirit who values freedom and personal autonomy above all else. You believe in doing what is right and helping others, but you do not fit into traditional definitions of good and evil. You are a risk-taker who follows their own moral compass, and you stand up for what you believe in even when it puts you at odds with the law. You are often seen as a wild card and a bit of a loose cannon, but you are loyal and trustworthy to those you care about.")

Character.create!(name: "C-3PO", theme_id: star_wars.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, s3key: 'StarWarsCharacters/C3P0.png', alignment: 4, description: " The loyal droid of Anakin Skywalker, and a staunch defender of justice. You stay true to your beliefs and adhere to the law, but are willing to break it if it will help those in need. You are an expert in etiquette and protocol, and strive to keep the peace.")
Character.create!(name: "Boba Fett", theme_id: star_wars.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, s3key: 'StarWarsCharacters/BobaFett.png', alignment: 5, description: "You are Boba Fett, a self interested, lawless, bounty hunter. True Neutral means you are neutral in regards to good and evil and have no bias towards either. You believe that order and chaos have a natural balance and seek to maintain it, seeking neither too much nor too little of either. Your decisions are based on what is most practical and you may be willing to work with anyone or anything if it benefits you.")
Character.create!(name: "Lando Calrissian", theme_id: star_wars.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: 'StarWarsCharacters/Lando.jpeg', alignment: 6, description: "You are Lando Calrissian a charming, daring, and ambitious scoundrel with a heart of gold. You are fiercely independent and often find yourself in difficult situations, but you always manage to find a way out. You don't follow the rules and often go against the grain. You're loyal to your friends and always up for a good time.")

Character.create!(name: "Darth Vader", theme_id: star_wars.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, s3key: 'StarWarsCharacters/DarthVader.jpeg', alignment: 7, description: "Your pragmatism and discipline make you a reliable leader and your commitment to order makes you a powerful asset to any team. Your loyalty to your cause and your ability to work within the rules make you a formidable opponent. However, your willingness to do whatever it takes to get the job done can make you a dangerous enemy.")
Character.create!(name: "Emperor Palpatine", theme_id: star_wars.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, s3key: 'StarWarsCharacters/Palpatine.png', alignment: 8, description: "You are calculating, power-hungry, and amoral. You believe in order and control and will use any means to achieve your goals. You use fear and intimidation to achieve your aims and have no qualms about using underhanded methods or punishing those who stand in your way.")
Character.create!(name: "Jabba the Hutt", theme_id: star_wars.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, s3key: 'StarWarsCharacters/JabbaTheHutt.png', alignment: 9, description: "You are Jaba the Hutt, the crime lord of Tatooine. You are cunning and calculating, and you will do whatever it takes to achieve your goals. You will use any means necessary to gain power, even if it means breaking the law. You are unafraid to make enemies, and you will do whatever it takes to get what you want." )

### Harry Potter Quiz ###
harry_potter = Theme.create!(title: "Are You A Hero, Villain, Or An Extra? Take This Harry Potter Character Quiz And Find Out Where You Stand In The Wizarding World!", name: "Harry Potter Character", image_link: nil, s3_key: "HarryPotterTheme.png")
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
Character.create!(name: "Hermione Granger", theme_id: harry_potter.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, s3key: 'HarryPotterCharacters/Hermoine.jpeg', alignment: 1, description: "Hermione Granger is a natural leader who loves to help those in need. She is deeply committed to justice and order and will go to great lengths to protect the innocent. She is fiercely independent and will never back down from a challenge. Hermione is always looking for a way to make the world a better place." )
Character.create!(name: "Harry Potter", theme_id: harry_potter.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, s3key: 'HarryPotterCharacters/Harry.jpeg', alignment: 2, description: "Harry Potter is a brave, loyal and kind-hearted person who is willing to put himself in danger to help others. He is brave and unafraid to stand up for what he believes in, even when faced with opposition or danger. He is loyal to those he loves and willing to put himself in harm's way to protect them. He is kind-hearted and shows compassion for all people, regardless of their background or beliefs. He is an inspiring leader who is willing to take risks and put himself in uncomfortable situations in order to help those in need." )
Character.create!(name: "Ron Weasley", theme_id: harry_potter.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, s3key: 'HarryPotterCharacters/Ron.jpeg', alignment: 3, description: "Ron Weasley is a brave and loyal friend who will go to great lengths to help those he loves. He is also a bit impulsive and often acts without considering the consequences. He has a strong moral compass and will always try to do what is right for the greater good, even when it means putting himself in danger. He is chaotic good to the core." )

Character.create!(name: "Severous Snape", theme_id: harry_potter.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, s3key: 'HarryPotterCharacters/Snape.jpeg', alignment: 4, description: "A wizard who loves the rules, but also knows when to bend them in order to get things done. He is the kind of person who would be the first to arrive at a party and the last to leave. He is always looking for the most efficient and effective way to do things, but also knows when to take a break and enjoy life." )
Character.create!(name: "Hedwig", theme_id: harry_potter.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, s3key: 'HarryPotterCharacters/Hedwig.jpeg', alignment: 5, description: "Hedwig is  a wise and powerful creature. He is free-spirited and independent, rarely taking sides in any conflict and rarely judging others for their decisions. Hedwig values balance, and strives to maintain it in all aspects of his life. He is wise and patient, and he often finds creative solutions to difficult problems." )
Character.create!(name: "Gilderoy Lockhart", theme_id: harry_potter.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: 'HarryPotterCharacters/Lockhart.webp', alignment: 6, description: "Gilderoy Lockhart is a whimsical and charismatic wizard who values personal freedom above all else. He is an adventurer, a risk-taker, and an independent thinker who enjoys exploring the unknown and challenging conventions. He has a strong sense of justice, and will always do what he believes is right, even if it means going against the grain. He is unpredictable and sometimes irresponsible, but he always has a plan in mind and will use his wit and charm to get what he wants." )

Character.create!(name: "Voldemort", theme_id: harry_potter.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, s3key: 'HarryPotterCharacters/Voldemort.jpeg', alignment: 7, description: "Voldemort is a powerful and ruthless wizard. He has no qualms about using his power to control and manipulate those around him. He believes in absolute loyalty and obedience to himself and his cause. He is willing to do whatever it takes to achieve his goals, no matter how dark and terrible the means might be. He has a twisted sense of justice, believing that the ends justify the means. He is a master of dark magic and will not hesitate to use it against his enemies." )
Character.create!(name: "Lucius Malfoy", theme_id: harry_potter.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, s3key: 'HarryPotterCharacters/Malfoy.webp', alignment: 8, description: "Lucius Malfoy is a devious and cunning character with a penchant for dark magic and a thirst for power. He is manipulative, calculated, and will do whatever it takes to get what he wants, even if it means hurting those around him. His loyalty lies with himself and no one else, and he will take advantage of any situation he can to further his own goals." )
Character.create!(name: "Bellatrix Lestrange", theme_id: harry_potter.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, s3key: 'HarryPotterCharacters/Lestrange.jpeg', alignment: 9, description: "Bellatrix Lestrange is a chaotic evil character. She is impulsive and has a strong disregard for laws and social conventions. She is driven by her own desires and will do anything to get her way. She is also highly manipulative and is willing to use any means necessary to get what she wants. She is willing to take risks and doesn't hesitate to hurt others in order to achieve her goals. Her actions often lead to destruction and chaos." )

### Lord of the Rings Quiz ###
lotr = Theme.create!(title: "Sauron or Samwise, take this LOTR character alignment to find where you stand in the fight for Middle Earth!", name: "Lord of the Rings Character", image_link: nil, s3_key: "LordOfTheRingsTheme.jpeg")
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
Character.create!(name: "Aragorn", theme_id: lotr.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LOTR/Aragorn.jpeg', alignment: 1, description: "You are Aragorn, a noble ranger of the North. You are a brave leader, who follows the strict code of honor and justice. You fight for the greater good and are willing to do whatever it takes to protect your people and the innocent.")
Character.create!(name: "Frodo", theme_id: lotr.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LOTR/Frodo.png', alignment: 2, description: "You are Frodo Baggins, a brave and kindhearted hobbit who is willing to do what’s necessary for the greater good. You are unselfish, generally kind, and very compassionate. You are devoted to preserving life, and are willing to take risks to help others.")
Character.create!(name: "Pippin", theme_id: lotr.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LOTR/Pippin.webp', alignment: 3, description: "You are Pippin Took, a brave, daring and adventurous hobbit. You value freedom and have a strong sense of justice. You are loyal and kind-hearted, but can be impulsive and reckless. You are fiercely independent and thrive on taking risks." )

Character.create!(name: "Boromir", theme_id: lotr.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LOTR/Boromir.webp', alignment: 4, description: "You are Boromir, Son of Denethor, a stalwart and courageous warrior from Gondor. You are loyal to your family and your people, and always strive to do what is right and just. You are wise and have a strong sense of justice, but can be stubborn and uncompromising at times.")
Character.create!(name: "Treebeard", theme_id: lotr.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LOTR/Treebeard.webp', alignment: 5, description: "You're Treebeard, the Ent of Fangorn Forest. You're a neutral character that likes to keep things balanced in the world, but don't mess with your home and its inhabitants - you'll get a good Ent-ing!")
Character.create!(name: "Gollum", theme_id: lotr.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LOTR/Gollum.webp', alignment: 6, description: "You are Gollum, the master of tricks and riddles, and you live by no law or code other than your own. You'll do whatever it takes to get what you want, even if it means taking something from someone else. Your motto is \"what's mine is mine and what's yours is mine too!\"")

Character.create!(name: "Sauron", theme_id: lotr.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, s3key: 'LOTR/Sauron.webp', alignment: 7, description: "You are Sauron, Lord of the Rings. You are a powerful ruler with a vision of a world where order and strength reign supreme. You will stop at nothing to achieve your goals and will do whatever it takes to ensure the success of your plans.")
Character.create!(name: "Saruman", theme_id: lotr.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, s3key: 'LOTR/Saruman.webp', alignment: 8, description: "You are Sarumon the White,  a scheming and ambitious individual with little regard for laws and regulations. You are willing to do whatever it takes to get ahead, no matter the cost to others.")
Character.create!(name: "Balrog", theme_id: lotr.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, s3key: 'LOTR/Balrog.webp', alignment: 9, description: "You have been chosen as the Balrog of Morgoth - the first and greatest of the Dark Lords of Middle-earth. You are a powerful being of pure evil, and your only purpose is to cause chaos and destruction wherever you go. Enjoy your reign of terror!")


#####
#Coder Quiz 

coder = Theme.create!(title: "Techies Unite: Find out Which Side of the Digital Divide You're on with Our CyberQuiz", name: "coder", image_link: nil, s3_key: "CoderTheme.jpeg")

# Good/Evil Questions
# 1
Question.create(
  theme_id: coder.id,
  question: "You work for a software company that is planning to release a new product. Your boss has instructed you to intentionally add a backdoor that will allow the company to access user data without their knowledge or consent. What would you do?",
  answer_1: "Refuse to add the backdoor and report your boss's request to higher management or authorities if necessary.",
  answer_2: "Add the backdoor as requested without question.",
  answer_3: "Add the backdoor but also implement measures to ensure that it can only be accessed with user consent and awareness.",
  answer_4: "Add the backdoor but secretly notify users of its existence and how to block it.",
  answer_5: "Add the backdoor but purposely make it difficult or impossible for the company to access user data.",
  good_evil_chaotic_lawful: 0
)
# 2
Question.create(
  theme_id: coder.id,
  question: "You discover that a fellow programmer has intentionally written code that will cause harm to users. What would you do?",
  answer_1: "Report the programmer's actions to your supervisor or other relevant authority.",
  answer_2: "Ignore the issue and hope that it does not cause harm.",
  answer_3: "Confront the programmer directly and try to persuade them to fix the code.",
  answer_4: "Intentionally write code that will counteract the harmful code.",
  answer_5: "Sabotage the programmer's work to ensure the harmful code does not make it into the final product.",
  good_evil_chaotic_lawful: 0
)
# 3
Question.create(
  theme_id: coder.id,
  question: "You are working on a project for a client that requires you to use a third-party library with known security vulnerabilities. What would you do?",
  answer_1: "Use the library as requested but also implement measures to minimize the security risks.",
  answer_2: "Refuse to use the library and propose alternative solutions to the client.",
  answer_3: "Use the library but disclose the potential security risks to the client and obtain their consent.",
  answer_4: "Use the library without any additional measures or disclosures.",
  answer_5: "Use the library but also write code that will exploit the security vulnerabilities for personal gain.",
  good_evil_chaotic_lawful: 0
)
# 4
Question.create(
  theme_id: coder.id,
  question: "You work for a company that has developed a new algorithm that can predict which users are most likely to default on their loans. The company plans to sell the algorithm to banks and financial institutions, but you discover that the algorithm is biased against certain minority groups. What would you do?",
  answer_1: "Refuse to be involved in the sale of the algorithm and report the bias to higher management or authorities if necessary..",
  answer_3: "Sell the algorithm as planned without addressing the bias.",
  answer_4: "Sell the algorithm but also develop a plan to address and eliminate the bias.",
  answer_2: "Sell the algorithm but secretly notify affected minority groups of the bias and how to avoid it.",
  answer_5: "Sell the algorithm but purposely make it less effective for banks and financial institutions that use it to discriminate against certain minority groups.",
  good_evil_chaotic_lawful: 0
)
# 5
Question.create(
  theme_id: coder.id,
  question: "You are a freelance programmer working on a project for a client who has requested that you include a feature that violates privacy laws. What would you do?",
  answer_1: "Refuse to include the feature and report the request to the appropriate authorities if necessary.",
  answer_2: "Include the feature as requested without question.",
  answer_3: "Include the feature but also implement measures to minimize the privacy violations.",
  answer_4: "Include the feature but also disclose the potential privacy violations to the client and obtain their consent.",
  answer_5: "Include the feature but purposely make it difficult or impossible to access user data without their consent.",
  good_evil_chaotic_lawful: 0
)
# 6
Question.create(
  theme_id: coder.id,
  question: "You are working on a project for a company that requires you to use a proprietary software library owned by a competitor. The competitor has offered to sell you a modified version of the library that contains intentional vulnerabilities that they can exploit to gain access to your company's data. What would you do?",
  answer_1: "Refuse to use the library and report the competitor's offer to higher management or authorities if necessary.",
  answer_2: "Use the library as requested but also implement measures to prevent the competitor from exploiting the vulnerabilities.",
  answer_3: "Use the library but also disclose the potential vulnerabilities to your company and obtain their consent.",
  answer_4: "Use the library without any additional measures or disclosures.",
  answer_5: "Use the library but also write code that will exploit the vulnerabilities to gain access to the competitor's data.",
  good_evil_chaotic_lawful: 0
)
# Lawful/Chaotic Questions
# 1
Question.create(
  theme_id: coder.id,
  question: "How do you feel about following a strict coding style guide, even if it means sacrificing some creativity?",
  answer_1: "I always follow the style guide strictly, even if it limits my creativity.",
  answer_2: "I mostly follow the style guide, but occasionally make exceptions to improve code quality or creativity.",
  answer_3: "I try to follow the style guide, but prioritize creativity and code quality over strict adherence.",
  answer_4: "I only follow the style guide when absolutely necessary, preferring to express my creativity and style freely.",
  answer_5: "I intentionally disregard the style guide in favor of my own personal preferences or chaos.",
  good_evil_chaotic_lawful: 1
)
# 2
Question.create(
  theme_id: coder.id,
  question: "How do you feel about working on a team project with a clearly defined leader and hierarchy?",
  answer_1: "I enjoy working in a structured environment with a clear chain of command.",
  answer_2: "I am comfortable working in a team with a leader, but prefer some degree of autonomy and collaboration.",
  answer_3: "I prefer working in a flat team structure where everyone's input is valued equally.",
  answer_4: "I dislike being in a hierarchical team structure and prefer to work independently or with a small group.",
  answer_5: "I intentionally disrupt team hierarchies and structures, preferring a chaotic and free-flowing work environment.",
  good_evil_chaotic_lawful: 1
)
# 3
Question.create(
  theme_id: coder.id,
  question: "How do you feel about maintaining detailed documentation and commenting your code thoroughly?",
  answer_1: "I always make sure to document and comment my code thoroughly, even if it takes extra time.",
  answer_2: "I mostly maintain documentation and comments, but sometimes prioritize code quality or speed over thoroughness.",
  answer_3: "I try to maintain documentation and comments, but sometimes forget or overlook certain parts of the code.",
  answer_4: "I only maintain documentation and comments when it is required or necessary for others to understand the code.",
  answer_5: "I intentionally avoid or leave out documentation and comments, preferring to keep the code as concise and chaotic as possible.",
  good_evil_chaotic_lawful: 1
)
# 4
Question.create(
  theme_id: coder.id,
  question: "How do you feel about testing your code rigorously before releasing it?",
  answer_1: "I always test my code thoroughly and make sure it meets all quality standards before releasing it.",
  answer_2: "I mostly test my code, but sometimes prioritize speed or other factors over thorough testing.",
  answer_3: "I try to test my code, but sometimes overlook certain parts or don't have enough time to test everything thoroughly.",
  answer_4: "I only test my code when it is required or necessary for the project.",
  answer_5: "I intentionally avoid testing my code or don't prioritize it, preferring to release code quickly and rely on users to report bugs.",
  good_evil_chaotic_lawful: 1
)
# 5
Question.create(
  theme_id: coder.id,
  question: "How do you feel about maintaining a clean and organized codebase?",
  answer_1: "I always make sure to maintain a clean and organized codebase, even if it takes extra time.",
  answer_2: "I mostly maintain a clean and organized codebase, but sometimes prioritize speed or other factors over organization.",
  answer_3: "I try to maintain a clean and organized codebase, but sometimes let things get cluttered or disorganized.",
  answer_4: "I only maintain a clean and organized codebase when it is required or necessary for the project.",
  answer_5: "I intentionally avoid maintaining a clean and organized codebase, preferring a more chaotic and free-flowing approach.",
  good_evil_chaotic_lawful: 1
)
# 6
Question.create(
  theme_id: coder.id,
  question: "How do you feel about following industry standards and best practices for coding?",
  answer_1: "I always make sure to follow industry standards and best practices, even if it means sacrificing some personal preferences or creativity.",
  answer_2: "I mostly follow industry standards and best practices, but sometimes make exceptions for creative or technical reasons.",
  answer_3: "I try to follow industry standards and best practices, but sometimes overlook or forget certain parts of the code.",
  answer_4: "I only follow industry standards and best practices when it is required or necessary for the project.",
  answer_5: "I intentionally disregard industry standards and best practices, preferring to express my own personal style and creativity.",
  good_evil_chaotic_lawful: 1
)

Character.create!(name: "White Hat Hacker", theme_id: coder.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, s3key: 'CodingCharacters/Saruman.webp', alignment: 1, description: "This coder is highly ethical and uses their skills for the greater good. They may work to improve security and prevent cybercrime, and may even work with law enforcement agencies to catch cybercriminals.")
Character.create!(name: "The Open Source Advocate", theme_id: coder.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, s3key: 'CodingCharacters/OpenSource.png', alignment: 2, description: "This coder is passionate about open-source software and collaboration. They may contribute to open-source projects and work to make code more accessible and widely available.")
Character.create!(name: "Whistleblower aka Anonymous", theme_id: coder.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, s3key: 'CodingCharacters/Whistleblower.jpeg', alignment: 3, description: "This coder is willing to break rules and take risks to expose corruption or unethical behavior. They may use their coding abilities to uncover secrets and bring about positive change." )

Character.create!(name: "IT Administrator", theme_id: coder.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, s3key: 'CodingCharacters/ITAdministrator.gif', alignment: 4, description: "This coder is highly skilled at maintaining computer systems and networks. They may work to ensure that systems are secure and reliable, but may also be resistant to change or innovation.")
Character.create!(name: "Code Connoisseur", theme_id: coder.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, s3key: 'CodingCharacters/CodeConnisseur.png', alignment: 5, description: " This coder is highly knowledgeable about different coding practices and may have a deep understanding of multiple programming languages. They may not have a particular agenda, but may be highly respected in the coding community for their expertise.")
Character.create!(name: "Grey Hat Hacker", theme_id: coder.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, s3key: 'CodingCharacters/GreyHatHacker.jpeg', alignment: 6, description: "This coder is willing to break rules and push boundaries, but may not necessarily have any particular ethical or moral code. They may use their skills for good or evil purposes, depending on their whims at the time.")

Character.create!(name: "Corporate Spy", theme_id: coder.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, s3key: 'CodingCharacters/CorporateSpy.webp', alignment: 7, description: "This coder is highly skilled at gathering information and may work for companies or governments to steal secrets from competitors or other organizations. They may use their skills for financial gain or to gain a competitive advantage.")
Character.create!(name: "Black Hat Hacker", theme_id: coder.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, s3key: 'CodingCharacters/BlackHatHacker.jpeg', alignment: 8, description: "This coder is highly skilled at breaking into computer systems and networks. They may use their skills for personal gain, to steal sensitive information or cause damage to computer systems for malicious purposes.")
Character.create!(name: "Cyberterrorist", theme_id: coder.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, s3key: 'CodingCharacters/CyberTerrorist.jpeg', alignment: 9, description: "This coder is highly skilled at causing chaos and destruction through their use of computer systems. They may create viruses or malware, engage in cyberattacks, or use their abilities to cause harm to individuals or organizations.")