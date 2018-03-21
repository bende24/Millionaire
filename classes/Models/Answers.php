<?php
/**
 * Created by PhpStorm.
 * User: Lala
 * Date: 2018. 03. 09.
 * Time: 10:15
 */

namespace Models;


class Answers extends Model
{
    protected $table = 'answers';

    public function checkCorrect(int $answerId) : array
    {
        $result = $this->join("questions", "questions.id = answers.question_id", "inner")->where("answers.id",$answerId)->first();

        return [
            "isCorrect" => $result['letter'] == $result['correctAnswer'],
            "correct" => $result['correctAnswer']
        ];
    }
}