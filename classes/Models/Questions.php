<?php
/**
 * Created by PhpStorm.
 * User: Lala
 * Date: 2018. 03. 09.
 * Time: 10:15
 */

namespace Models;


class Questions extends Model
{
    protected $table = 'questions';

    public function questionsNAnswers($context)
    {
        $question = $context->question = (new Questions())->orderBy("RAND()")->first();
        $answers = $context->answers = (new Answers())->where("question_id", $question['id'])->all();

        return [
            "question" => $question,
            "answers" => $answers
        ];
    }
}