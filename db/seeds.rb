# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Theme.create!(name: "lawyer")
Question.create(theme_id: 1,                                                 question: "If you were a defense attorney, how would you handle a situation where your client confesses their guilt to you?",
answer_1: "I would do everything in my power to ensure that my client receives a fair trial and is not wrongfully convicted.",                     
answer_2: "I would try to find a solution that benefits everyone involved, such as negotiating a plea deal",                                  
answer_3: "I would only act if it benefited me in some way, such as by winning the case and enhancing my reputation",     
answer_4: "I would not get involved unless it was absolutely necessary and would follow the established legal procedures",                
answer_5: "I would take advantage of the situation for my own gain, such as by using the information to negotiate a better deal for myself")

Question.create!(theme_id: 1, 
question: "If you were a prosecutor, how would you handle a situation where you had to choose between following orders or doing what you believe is right?", 
answer_1: "I would follow orders, as they are there for a reason and must be obeyed", 
answer_2: "I would weigh the pros and cons and make a decision based on what I believe is best.", 
answer_3: "I would do what I believe is right, regardless of orders.", 
answer_4: "I would follow orders if it benefited me, but otherwise do what I believe is right.", 
answer_5: "I would do whatever it takes to achieve my goals, regardless of orders or morality.")

Question.create!(theme_id: 1, 
question: "If you were a judge, how would you handle a situation where a defendant is clearly guilty but the evidence against them was obtained illegally?", 
answer_1: "I would follow the law and exclude the illegally obtained evidence from the trial.", 
answer_2: "I would try to find a solution that upholds the law while also ensuring that justice is served", 
answer_3: "I would allow the evidence to be used in the trial if it meant achieving justice.", 
answer_4: "I would follow the established legal procedures for dealing with such situations, even if it meant going against my personal beliefs.", 
answer_5: "I would use my discretion as a judge to make a decision that benefits me in some way.")

Question.create!(theme_id: 1, 
question: "If you were a corporate lawyer, how would you handle a situation where your client wants you to engage in unethical behavior?", 
answer_1: "I would refuse to engage in unethical behavior and advise my client against it.", 
answer_2: "I would try to find a solution that achieves my client’s goals while also adhering to ethical standards", 
answer_3: "I would engage in unethical behavior if it meant achieving success for my client and myself.", 
answer_4: "I would follow the established ethical guidelines for lawyers, even if it meant losing the client or sacrificing potential success.", 
answer_5: "I would engage in unethical behavior if it meant challenging unjust laws or systems within the legal profession.")

Question.create!(theme_id: 1, 
question: "If you were a human rights lawyer, how would you handle a situation where you had to choose between serving your own interests or serving the interests of your clients?", 
answer_1: "I would always prioritize the interests of my clients over my own interests", 
answer_2: "I would try to find a balance between serving my own interests and serving the interests of my clients.", 
answer_3: "I would serve my own interests while pretending to serve the interests of my clients.", 
answer_4: "I would serve my own interests if it aligned with the law and order of the legal system, but otherwise prioritize serving my clients.", 
answer_5: "I would serve my own interests if it meant challenging unjust laws or systems within the legal profession.")

Question.create!(theme_id: 1, 
question: "If you were an immigration lawyer, how would you handle a situation where your client has been wrongfully detained by immigration authorities?", 
answer_1: "I would do everything in my power to secure their release and ensure that their rights are protected.", 
answer_2: "I would try to find a solution that benefits everyone involved, such as negotiating their release or seeking legal remedies.", 
answer_3: "I would only act if it benefited me in some way, such as by winning the case and enhancing my reputation.", 
answer_4: "I would follow the established legal procedures for dealing with such situations, even if it meant going against my personal beliefs.", 
answer_5: "I would take matters into my own hands and do whatever it takes to secure their release, regardless of the consequences.")

Question.create(theme_id: 1,                                                 question: "If you were a criminal defense attorney, how would you handle a situation where you believe your client is innocent but the evidence against them is overwhelming?",
answer_1: "I would do everything in my power to prove their innocence and ensure that they receive a fair trial.",                     
answer_2: "I would try to find a solution that benefits everyone involved, such as negotiating a plea deal or seeking alternative forms of justice",                                  
answer_3: "I would only act if it benefited me in some way, such as by winning the case and enhancing my reputation.",     
answer_4: "I would follow the established legal procedures for dealing with such situations, even if it meant going against my personal beliefs.",                
answer_5: "I would take matters into my own hands and do whatever it takes to prove their innocence, regardless of the consequences.")

Question.create!(theme_id: 1, 
question: "If you were a public defender, how would you handle a situation where your client is unable to afford your services?", 
answer_1: "I would provide my services pro bono and do everything in my power to ensure that they receive a fair trial.", 
answer_2: "I would try to find a solution that benefits everyone involved, such as seeking alternative forms of funding or negotiating a reduced fee.", 
answer_3: "I would only act if it benefited me in some way, such as by enhancing my reputation or gaining valuable experience", 
answer_4: "I would follow the established legal procedures for dealing with such situations, even if it meant going against my personal beliefs.", 
answer_5: "I would take matters into my own hands and do whatever it takes to ensure that they receive a fair trial, regardless of their ability to pay.")

Question.create!(theme_id: 1, 
question: "If you were a family lawyer, how would you handle a situation where your client wants to engage in behavior that is harmful to their children?", 
answer_1: "I would refuse to support their behavior and advise them against it.", 
answer_2: "I would try to find a solution that benefits everyone involved, such as seeking counseling or mediation.", 
answer_3: "I would only act if it benefited me in some way, such as by winning the case and enhancing my reputation.", 
answer_4: "I would follow the established legal procedures for dealing with such situations, even if it meant going against my personal beliefs.", 
answer_5: "I would take matters into my own hands and do whatever it takes to protect the children from harm, regardless of the consequences.")

Question.create!(theme_id: 1, 
question: "If you were an environmental lawyer, how would you handle a situation where your client wants to engage in behavior that is harmful to the environment?", 
answer_1: "I would refuse to support their behavior and advise them against it.", 
answer_2: "I would try to find a solution that benefits everyone involved, such as seeking alternative forms of development or negotiating a compromise.", 
answer_3: "I would only act if it benefited me in some way, such as by winning the case and enhancing my reputation", 
answer_4: "I would follow the established legal procedures for dealing with such situations, even if it meant going against my personal beliefs.", 
answer_5: "II would take matters into my own hands and do whatever it takes to protect the environment from harm, regardless of the consequences.")

Question.create!(theme_id: 1, 
question: "If you were an employment lawyer, how would you handle a situation where your client wants to engage in behavior that is discriminatory towards their employees", 
answer_1: "I would refuse to support their behavior and advise them against it.", 
answer_2: "I would try to find a solution that benefits everyone involved, such as seeking mediation or implementing anti-discrimination policies.", 
answer_3: "I would only act if it benefited me in some way, such as by winning the case and enhancing my reputation.", 
answer_4: "I would follow the established legal procedures for dealing with such situations, even if it meant going against my personal beliefs.", 
answer_5: "I would take matters into my own hands and do whatever it takes to protect the employees from discrimination, regardless of the consequences")

Question.create!(theme_id: 1, 
question: "If you were a tax lawyer, how would you handle a situation where your client wants to engage in behavior that is illegal in order to avoid paying taxes?", 
answer_1: "I would refuse to support their behavior and advise them against it", 
answer_2: "I would try to find a solution that benefits everyone involved, such as seeking legal tax-saving strategies or negotiating a settlement.", 
answer_3: "I would only act if it benefited me in some way, such as by winning the case and enhancing my reputation.", 
answer_4: "I would follow the established legal procedures for dealing with such situations, even if it meant going against my personal beliefs.", 
answer_5: "I would take matters into my own hands and do whatever it takes to protect my client from legal consequences, regardless of the legality of their actions.")
