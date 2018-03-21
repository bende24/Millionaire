$(document).ready(function () {

    function App()
    {
        var _self = this;

        this.init = function () {
            this.cacheElements();
            this.addWidgets();
            this.addEvents();
            this.getQuestion();
        },
        this.cacheElements = function () {
            /**
             * itt választjuk ki az elemeket az oldalról
             */
            this.phone = $("#phone");
            this.correctModal = $("#correctModal");
            this.wrongModal = $("#wrongModal");
            this.nextQuestion = $("#nextQuestion");
            this.answerButton = $(".answer");
        },
        this.addWidgets = function () {
        },
        this.addEvents = function () {
            /**
             * Ide jönnek az eventek az adott elemekre
             */
            this.phoneButton.on('click',this.nextQuestionClick)
            this.nextQuestion.on('click',this.nextQuestionClick)
            this.answerButton.on('click',this.answerButtonClick)
        },

            this.nextQuestionClick = function () {
                var current = $(".current-prize");
                _self.correctModal.modal("hide");
                _self.getQuestion();
                _self.resetAnswers();

                current.prev().addClass("current-prize");
                current.removeClass("current-prize");
            },
            
        this.answerButtonClick = function () {
            var $this = $(this);
            $(".answer").removeClass("active");
            $(this).addClass("active");
            $(".answer").prop("disabled", true);


            axios.post('/index.php/correct',{
                    answerId: $(this).data("answer_id")
            })
            .then(function (response) {
                console.log(response);
                var data = response.data;
                if(data.isCorrect){
                    $this.addClass("correct");
                    _self.correctModal.modal("show");
                } else {
                    var actualPrize = $(".current-prize");
                    $this.addClass("wrong");
                    $(".answer[data-id='" + data.correct + "']").addClass("correct");
                    _self.wrongModal.find(".modal-body span").text(actualPrize.nextAll(".checkpoint:first").find("td").eq(1).text());
                    _self.wrongModal.modal("show");

                }
            })
            .catch(function (error) {
                console.log(error);
            });
        }

        this.getQuestion = function(){
            axios.post('/index.php/question',{})
            .then(function (response) {
                console.log(response.data)
                $(".question-body").text(response.data.question.body);
                $.each(response.data.answers,function(index, item){
                    $(".answer[data-id='" + item.letter + "'] em").text(item.body);
                    $(".answer[data-id='" + item.letter + "']").data("answer_id",item.id);
                })
                /*for(var i = 0; i<4;i++ ){
                    $(".answer[data-id='" + response.data.answers[i].letter + "']").text(response.data.answers[i].body)
                }*/
            })
            .catch(function (error) {
                console.log(error);
            });
        },

        this.resetAnswers = function(){
            $(".answer").removeClass("wrong correct active")
                        .prop("disabled", false)
        }
    }

    var app = new App();
    app.init();
});