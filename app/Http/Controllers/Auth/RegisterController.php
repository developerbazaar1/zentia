<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use Illuminate\Auth\Events\Registered;
use App\NotificationModel; 

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    { 
        return Validator::make($data, [
            'name' => ['required', 'max:50'],
            // 'name' => ['required', 'regex:/^[a-zA-Z ]*$/', 'max:50'],
            // 'last_name' => ['required', 'string', 'max:50'],
            'email' => ['required', 'email', 'max:50', 'unique:users'],
            'phone' => ['required', 'numeric'],
            // 'company' => ['required', 'max:100'],
            'password' => ['required'],
            'country_code' => ['required'],
             // 'password' => ['required', 'confirmed'],
            // 'country' => ['required'],
            // 'profile_photo' => ['required'],
            // 'profile_headline' => ['required', 'max:500'],
            // 'biography' => ['required', 'max:1000'],
            // 'expertise' => ['required'],
            // 'seniority' => ['required'],
            // 'industry' => ['required'],
            // 'business_model' => ['required'],
            // 'price_20' => ['required', 'numeric', 'max:10000000'],
            // 'price_40' => ['required', 'numeric', 'max:10000000'],
            // 'price_60' => ['required', 'numeric', 'max:10000000'],
            // 'available_slots' => ['required'],
            // 'account_details' => ['required'],
            // 'marketing_and_news' => ['required'],
            'terms_and_conditions' => ['required'],
            'role' => ['required'],
            'timezone' => ['required'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {   
        if(isset($data['marketing_and_news'])){
            $mar = $data['marketing_and_news'];
        }else{
            $mar = 0;
        }
        
        if(isset($data['why_advisor'])){
            $why_advisor = $data['why_advisor'];
        }else{
            $why_advisor = '';
        }
        
        if(isset($data['expertise'])){
            $expertise = $data['expertise'];
        }else{
            $expertise = '';
        }
        
        
        if($data['role'] == 'coach'){
            $status = 0;
        }else{
            $status = 1;
        }
        
        return User::create([
            'name' => $data['name'],
            // 'last_name' => $data['last_name'],
            'email' => $data['email'],
            'phone' => $data['phone'],
            'country_code' => $data['country_code'],
            // 'company' => $data['company'],
            'password' => Hash::make($data['password']),
            // 'country' => $data['country'],
            // 'profile_photo' => $data['profile_photo'],
            // 'profile_headline' => $data['profile_headline'],
            // 'biography' => $data['biography'],
            // 'expertise' => $data['expertise'],
            // 'seniority' => $data['seniority'],
            // 'industry' => $data['industry'],
            // 'business_model' => $data['business_model'],
            // 'price_20' => $data['price_20'],
            // 'price_40' => $data['price_40'],
            // 'price_60' => $data['price_60'],
            // 'available_slots' => $data['available_slots'],
            // 'account_details' => $data['account_details'],
            'marketing_and_news' => $mar,
            'why_advisor' => $why_advisor,
            'expertise_reg' => $expertise,
            'terms_and_conditions' => $data['terms_and_conditions'],
            'role' => $data['role'],
            'status' => $status,
            'timezone' => $data['timezone'],
        ]);
    }
    
    
    public function register(Request $request)
    {
        $this->validator($request->all())->validate();
        event(new Registered($user = $this->create($request->all())));
        // $this->guard()->login($user);
        
        if($user->role == 'coach'){
                
                $admin_id = User::where('role', 'admin')->pluck('id')->first();
        
                $datanot = array(
                    "user_id"=>$admin_id,
                    "sender_id"=>$user->id,
                    "notification_msg"=> 'Coach( '.$user->name.' ) register on your site. ',
                    "url"=>"admin-coach-list",
                    "admin_status"=>'unseen',
                    "page"=>'coach',
                );
                
                NotificationModel::create($datanot)->id;
                
                // email data
                $email_data = array(
                    'name' =>  $user->name,
                    'email' => $user->email,
                );
                
                // send email with the template
                Mail::send('email.coach_approval_request', $email_data, function ($message) use ($email_data) {
                    $message->to('zentiaaccess@gmail.com', 'Zentia')
                    ->subject('New coach applicationt')
                    ->from($email_data['email'], $email_data['name']);
                    });
                    
                    
                // send email with the template
                Mail::send('email.coach_approval_request_tocoach', $email_data, function ($message) use ($email_data) {
                    $message->to($email_data['email'], $email_data['name'])
                    ->subject('Thank you for your interest')
                    ->from('zentiaaccess@gmail.com', 'Zentia');
                    });
                    
            // return '/coach/profile';
            // return $this->registered($request, $user)
            //                 ?: redirect($this->redirectPath());
            return redirect(route('login'))->with('error_msg',"Your application has been sent to Zentia. You will receive an email with next steps, when your application has been approved or rejected");
                            
        }else{
            
            $admin_id = User::where('role', 'admin')->pluck('id')->first();
        
            $datanot = array(
                "user_id"=>$admin_id,
                "sender_id"=>$user->id,
                "notification_msg"=> 'User( '.$user->name.' ) register on your site. ',
                "url"=>"admin-users",
                "admin_status"=>'unseen',
                "page"=>'user',
            );
            
            NotificationModel::create($datanot)->id;
            
             // email data
                $email_data = array(
                    'name' =>  $user->name,
                    'email' => $user->email,
                );
                  
                // send email with the template
                Mail::send('email.signup_email_touser', $email_data, function ($message) use ($email_data) {
                    $message->to($email_data['email'], $email_data['name'])
                    ->subject('Hey you, welcome to Zentia!')
                    ->from('zentiaaccess@gmail.com', 'Zentia');
                    });
        
            return redirect(route('login'))->with('success_done',"Registered successfylly, Please login from here");
            
        }
        
        
    }

    // public function redirectTo() {
    //     if(Auth::user()->role == 'coach'){
            
    //             // email data
    //             $email_data = array(
    //                 'name' =>  Auth::user()->name,
    //                 'email' => Auth::user()->email,
    //             );
                
    //             // send email with the template
    //             Mail::send('email.coach_approval_request', $email_data, function ($message) use ($email_data) {
    //                 $message->to('zentiaaccess@gmail.com', 'Zentia')
    //                 ->subject('Coach Approval Request')
    //                 ->from($email_data['email'], $email_data['name']);
    //                 });
                    
    //         return '/coach/profile';
    //     }else{
    //         return '/user/profile';
    //     }
        
       
    // }
    
    //  public function register(Request $request)
    // {
    //     $this->validator($request->all())->validate();
    //     event(new Registered($user = $this->create($request->all())));
        
    //         if($user->role == 'coach'){
                
    //                 // email data
    //                 $email_data = array(
    //                     'name' =>  $user->name,
    //                     'email' => $user->email,
    //                 );
                    
    //                 // send email with the template
    //                 Mail::send('email.coach_approval_request', $email_data, function ($message) use ($email_data) {
    //                     $message->to('zentiaaccess@gmail.com', 'Zentia')
    //                     ->subject('Coach Approval Request')
    //                     ->from($email_data['email'], $email_data['name']);
    //                     });
                        
    //             // return '/coach/profile';
    //             return $this->registered($request, $user)
    //                         ?: redirect($this->redirectPath());
    //         }else{
    //             return '/user/profile';
    //         }
        
        
    //  }
}
