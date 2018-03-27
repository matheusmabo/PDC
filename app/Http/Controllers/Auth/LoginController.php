<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;



class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function registro(Request $request){

        $data = $request->all();
        $results = DB::select('select max(IdLogin) as idlogin from login');

        $results1 = array_column($results,'idlogin') ;



        $id =  $results1['0'] + 1; //ID Auto Increment
        $nome = $data['nome'];

        $email = $data['email'];
        $senha = md5($data['senha']);
        $cel = $data['cel'];
        $empresa = $data['empresa'];
        $trabalho = $data['trabalho'];

        $resultsemail = DB::select('select * from login where Email = :id', ['id' => $email ]);



        if (count($resultsemail) == 1){
            dd('Email já cadastrado');
             return view('auth/register');
        }else{
            DB::insert('insert into duomo.login (idLogin,Nome,TelefoneCelular,Senha,EmpresaAtual,TempoTrabalho,Email) values ('.$id.',"'.$nome.'",'.$cel.',"'.$senha.'","'.$empresa.'",'.$trabalho.',"'.$email.'")');
            return view('auth/login');
        }

    }

    public function logado(Request $request)
    {

        $data = $request->all();


        $email = $data['email'];
        $senha = md5($data['senha']);

        $resultsemail = DB::select('select * from login where Email = :id', ['id' => $email ]);
        $resultssenha = DB::select('select * from login where Senha = :id', ['id' => $senha ]);
        $results1 = array_column($resultsemail,'Nome') ;

        if (count($resultsemail) == 1){

            if (count($resultssenha) == 1){

//                return view('dashboard/dashboard')->with('variaveis');
                return view('dashboard/dashboard')->withName($results1);

            }else{
                dd('Senha incorreta');
            }
        }else{
           dd('Email incorreto');
        }



    }
    public function reset(){

        return view('Auth/reset');

    }

    public function resetsenha(Request $request){

        $data = $request->all();

        $email = $data['email'];
        $senha = md5($data['senha']);
        $confsenha = md5($data['confsenha']) ;
        $resultsemail = DB::select('select * from login where Email = :id', ['id' => $email ]);

        if ($senha == $confsenha){


            if (count($resultsemail) == 1){
                $affected = DB::update('update login set Senha = "'.$senha.'" where Email = :id', ['id' => $email ]);

                return view('auth/login');
            }else{
                dd('email nao existe na base de dados');
                return view('Auth/reset');
            }
        }else{
            dd('senha diferentes');
            return view('Auth/reset');
        }

//        dd($data);
//

    }

}


