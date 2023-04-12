# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

lawyer = Theme.create!(name: "lawyer")

Question.create(theme_id: 1,                                     question: "A high-profile client offers you a significant sum of money to represent them in a case where they are clearly guilty. What do you do?",
answer_1: "Reject the case outright on moral grounds.",                     
answer_2: "Accept the case but donate the earnings to charity",                                  
answer_3: "Accept the case and do your best to defend the client.",     
answer_4: "Accept the case and use any means necessary to win, even if it involves bending the truth.",                
answer_5: "Accept the case and actively participate in covering up the client's crimes.", good_evil_chaotic_lawful: 0)

Question.create!(theme_id: 1, 
question: "You come across evidence that could potentially exonerate a defendant, but it would also incriminate your client. How do you proceed?", 
answer_1: "Present the evidence to the court and protect the innocent party.", 
answer_2: "Disclose the evidence to both parties privately, seeking a resolution without jeopardizing your client's case.", 
answer_3: "Conceal the evidence but try to minimize the harm caused to the innocent party.", 
answer_4: "Keep the evidence hidden and prioritize your client's interests above all else.", 
answer_5: "Use the evidence to blackmail the innocent party for personal gain.", good_evil_chaotic_lawful: 0)

Question.create!(theme_id: 1, 
question: "Your client is a corporation that has caused significant environmental damage. How do you approach the case?", 
answer_1: "Advise the corporation to own up to its actions and compensate the affected communities.", 
answer_2: "Work on a settlement that balances the corporation's interests with the affected communities' needs.", 
answer_3: "Defend the corporation and attempt to minimize any penalties.", 
answer_4: "Actively discredit or suppress evidence of the corporation's wrongdoing.", 
answer_5: "Help the corporation cover up its actions and continue causing harm.", good_evil_chaotic_lawful: 0)





Question.create!(theme_id: 1, 
question: "A colleague is in danger of losing their job due to allegations of professional misconduct. You know they're innocent, but revealing the truth might harm your career. What do you do?", 
answer_1: "Come forward with the truth, regardless of the consequences to your career.", 
answer_2: "Try to help your colleague clear their name without putting your own career at risk.", 
answer_3: "Stay silent but offer support to your colleague privately.", 
answer_4: "Stay silent and distance yourself from your colleague to protect your reputation.", 
answer_5: "Use the situation to your advantage and work to replace your colleague after they're dismissed.", good_evil_chaotic_lawful: 0)

Question.create!(theme_id: 1, 
question: "You discover that a fellow attorney has been knowingly providing false evidence in court. How do you respond?", 
answer_1: "Report the attorney to the appropriate authorities immediately.", 
answer_2: "Confront the attorney privately and give them a chance to correct their actions.", 
answer_3: "Stay silent but distance yourself from the attorney professionally.", 
answer_4: "IKeep quiet, as you believe that everyone deserves a zealous defense.", 
answer_5: "Use the information to blackmail the attorney for personal gain.", good_evil_chaotic_lawful: 0)

Question.create!(theme_id: 1, 
question: "Your firm is representing a client who is known for their philanthropy, but you discover they are involved in illegal activities. How do you handle the situation?", 
answer_1: "IAdvise the client to end their illegal activities and make amends.", 
answer_2: "Continue representing the client but encourage them to change their ways.", 
answer_3: "Ignore the illegal activities and focus on the client's philanthropic efforts.", 
answer_4: " Use the client's illegal activities to your advantage in negotiations.", 
answer_5: "IEncourage the client to expand their illegal activities for mutual benefit.", good_evil_chaotic_lawful: 0)

Question.create(theme_id: 1,                                                question: "A new law is passed that you believe is unjust. How do you handle cases that involve this law?",
answer_1: "Uphold the law, as it is your duty to follow the legal system.",                     
answer_2: "Work within the legal system to challenge the law or find loopholes.",                                  
answer_3: "Selectively enforce the law, depending on the specific circumstances.",     
answer_4: "Encourage clients to defy the law in protest.",                
answer_5: "Actively work to undermine the law and assist clients in breaking it.", good_evil_chaotic_lawful: 1)

Question.create!(theme_id: 1, 
question: "A client you know to be innocent is found guilty in court. How do you proceed?", 
answer_1: "Accept the verdict and move on, as the legal system has spoken.", 
answer_2: "Pursue an appeal and exhaust all legal remedies available.", 
answer_3: "Investigate alternative avenues for proving your client's innocence.", 
answer_4: "Engage in covert actions to expose the truth, even if it means bending the law.", 
answer_5: "Attempt to sabotage the prosecution's case or the legal system itself to free your client.", good_evil_chaotic_lawful: 1)

Question.create!(theme_id: 1, 
question: "You are representing a client who is clearly guilty but insists on pleading not guilty. How do you handle the situation?", 
answer_1: "Advise the client to change their plea and seek a fair punishment.", 
answer_2: "Follow the client's wishes and present a defense within the confines of the law.", 
answer_3: "Develop creative arguments to cast doubt on the evidence against your client.", 
answer_4: "Use any means necessary to win the case, even if it involves bending the truth.", 
answer_5: "Actively participate in covering up the client's crimes.", good_evil_chaotic_lawful: 1)

Question.create!(theme_id: 1, 
question: "Your client is facing a long sentence for a crime they committed out of desperation. How do you approach their defense?", 
answer_1: "Seek the appropriate punishment under the law, regardless of the circumstances.", 
answer_2: "Argue for leniency based on your client's difficult situation.", 
answer_3: "Use creative legal strategies to secure the best outcome for your client.", 
answer_4: "Discredit or suppress evidence to ensure a favorable outcome for your client.", 
answer_5: "Encourage your client to lie or manipulate the facts to avoid punishment.", good_evil_chaotic_lawful: 1)

Question.create!(theme_id: 1, 
question: "You are offered a bribe to sabotage a case you are working on. How do you respond?", 
answer_1: "Refuse the bribe and report the incident to the authorities.", 
answer_2: "Refuse the bribe but keep the incident to yourself.", 
answer_3: "Accept the bribe but continue to work on the case to the best of your ability.", 
answer_4: " Accept the bribe and subtly compromise the case.", 
answer_5: "Accept the bribe and actively work to ensure your client loses.", good_evil_chaotic_lawful: 1)

Question.create!(theme_id: 1, 
question: "You discover a technicality that could potentially get your guilty client acquitted. What do you do?", 
answer_1: "Ignore the technicality, as your client should face the consequences of their actions.", 
answer_2: "Present the technicality in court and let the judge decide its significance.", 
answer_3: "Use the technicality to negotiate a plea deal with reduced charges.", 
answer_4: "Exploit the technicality to the fullest extent to secure your client's acquittal.", 
answer_5: "Use the technicality to manipulate the legal process and undermine the prosecution's case.", good_evil_chaotic_lawful: 1)

Character.create!(name: "Thurgood Marshall", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: 1)
Character.create!(name: "Thurgood Marshall", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: :lawful_good)
Character.create!(name: "Amal Clooney", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.34, lawful_max: 0.66, url: "url.com", alignment: :neutral_good)
Character.create!(name: "Clarence Darrow", theme_id: Theme.first.id, good_min: 0.67, good_max: 1.00, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: :chaotic_good)

Character.create!(name: "Jack McCoy", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: :lawful_neutral)
Character.create!(name: "Robert Shapiro", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.34, lawful_max: 0.66, url: "url.com", alignment: :true_neutral)
Character.create!(name: "Saul Goodman", theme_id: Theme.first.id, good_min: 0.34, good_max: 0.66, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: :chaotic_neutral)

Character.create!(name: "Roy Cohn", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.67, lawful_max: 1.00, url: "url.com", alignment: :lawful_evil)
Character.create!(name: "Michael Cohen", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.34, lawful_max: 0.66, url: "cohenurl.com", alignment: :neutral_evil)
Character.create!(name: "John Milton", theme_id: Theme.first.id, good_min: 0.00, good_max: 0.33, lawful_min: 0.00, lawful_max: 0.33, url: "url.com", alignment: :chaotic_evil)

