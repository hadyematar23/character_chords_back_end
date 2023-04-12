class QuestionSerializer

  def initialize(info) 
    @info = info 
  end


  def serialize_all_questions
    n = 1
    {
      links: { image: "http://image.com" },
      data: @info.map do |question|
        {
          type: "question",
          id: n,
          attributes: {
            name: question.question,
            quiz: Theme.find(question.theme_id).name,
            spectrum: question.good_evil_chaotic_lawful,
            answers: {
              A: { text: question.answer_1, value: 1 },
              B: { text: question.answer_2, value: 2 },
              C: { text: question.answer_3, value: 3 },
              D: { text: question.answer_4, value: 4 },
              E: { text: question.answer_5, value: 5 } 
            }
          }
        }.tap { n += 1 }
      end
    }
  end
  
end
