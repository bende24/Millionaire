<?php
/**
 * Created by PhpStorm.
 * User: Lala
 * Date: 2018. 03. 09.
 * Time: 9:47
 */

namespace Controllers;

use Models\Answers;
use Models\Questions;
use Models\Prizes;

class HomeController extends Controller
{
    public function index($request, $response, $args)
    {
        $this->context->prizes = (new Prizes())->orderBy("prize", "DESC")->all();

        return $this->render('index');
    }

    public function correct($request, $response, $args)
    {

        $this->context = (new Answers())->checkCorrect($this->params['answerId']);


        echo $this->json();
    }

    public function question($request, $response, $args)
    {
        $question = (new Questions())->questionsNAnswers($this->context);

        return json_encode($question);
    }

    public function answer($request, $response, $args)
    {
        $questionId = $this->params['questionId'];
        $this->context->answers = (new Answers())->where("question_id", $questionId)->all();

        return $this->json();
    }

    public function test($request, $response, $args)
    {
        $a = (new Answers())->checkCorrect(4);
        var_dump($a);
    }
}