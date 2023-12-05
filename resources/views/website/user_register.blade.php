 <?php

// $curl = curl_init();

// curl_setopt_array($curl, array(
//   CURLOPT_URL => 'https://livehealth.solutions/patientRegister/80e47134-f432-11ea-851e-02c564662538/',
//   CURLOPT_RETURNTRANSFER => true,
//   CURLOPT_ENCODING => '',
//   CURLOPT_MAXREDIRS => 10,
//   CURLOPT_TIMEOUT => 0,
//   CURLOPT_FOLLOWLOCATION => true,
//   CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
//   CURLOPT_CUSTOMREQUEST => 'POST',
//   CURLOPT_POSTFIELDS =>'{
//     "countryCode":"91",
//     "mobile": "8103084226",
//     "email": "testtest@livehealth.in",
//     "designation": "Mr.",
//     "fullName": "crelio 12",
//     "age": 25,
//     "gender": "Male",
//     "area": "Baner",
//     "city": "Pune",
//     "patientType": "IP",
//     "labPatientId": "Lab9876",
//     "pincode": "411033",
//     "patientId": "",
//     "dob": "1996-11-29T00:00:00.000Z",
//     "passportNo": "",
//     "panNumber": "",
//     "aadharNumber": "",
//     "insuranceNo": "",
//     "nationality": "Indian",
//     "ethnicity": "Marathi",
//     "nationalIdentityNumber": "",
//     "workerCode": "",
//     "doctorCode": "",
//     "areaOfResidence":"Pune",
//     "state":"Maharashtra",
//     "isAppointmentRequest" : 1,
//     "startDate" : "2022-11-07T08:30:00Z",
//     "endDate" : "2022-11-07T09:00:00Z"
// }',
//   CURLOPT_HTTPHEADER => array(
//     'Content-Type: application/json'
//   ),
// ));

// $response = curl_exec($curl);

// curl_close($curl);
// echo $response;

// ?>


 <!DOCTYPE html>
<html lang="en">

<head>

<!--=======Head========-->
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Zentia</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="{{ URL::asset('theme/vendors/feather/feather.css') }}">
  <link rel="stylesheet" href="{{ URL::asset('theme/vendors/ti-icons/css/themify-icons.css') }}">
  <link rel="stylesheet" href="{{ URL::asset('vendors/css/vendor.bundle.base.css') }}">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="{{ URL::asset('theme/vendors/datatables.net-bs4/dataTables.bootstrap4.css') }}">
  <link rel="stylesheet" href="{{ URL::asset('theme/vendors/ti-icons/css/themify-icons.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ URL::asset('theme/js/select.dataTables.min.css') }}">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="{{ URL::asset('theme/css/vertical-layout-light/style.css') }}">
  <!-- endinject -->
  <!-- Custom css -->
  <link rel="stylesheet" href="{{ URL::asset('theme/css/custom.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ URL::asset('theme/vendors/mdi/css/materialdesignicons.min.css') }}">
  <link rel="stylesheet" href="{{ URL::asset('theme/vendors/select2/select2.min.css') }}">
  <link rel="stylesheet" href="{{ URL::asset('theme/vendors/select2-bootstrap-theme/select2-bootstrap.min.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ URL::asset('theme/vendors/peity/peity.css') }}">
  <link rel="shortcut icon" href="{{ URL::asset('theme/images/favicon.png') }}" />
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.13/css/intlTelInput.css">
 <!--=======Head========-->
</head>


<body class="sidebar-dark bg-white">
<!--<div style="margin-bottom:500px"></div>-->
      <div class="nev-color px-2 py-2">


  
   
    <ul class="nav navbar-nav d-block pt-1">
      <li><a href="{{ route('discover') }}">Discover Advisore</a></li>
    
      <li><a href="{{ route('about') }}">About</a></li>
      <li><a href="{{ route('for-business') }}">For Business</a></li>
    </ul>
     <div class="navbar-header ">
    <a class="navbar-brand log-logo" href="{{url('/')}}"><img src="{{ URL::asset('theme/images/zentia-logo1.png') }}"></a>
  </div>

</div>
    
   
        <div class="row custom-color1">
         

          <div class="col-lg-7 m-auto px-0 custom-color1">

             <div class="auth-form-light text-left py-5 px-4 px-sm-5">

             

              <h3 class="font-weight-bold">New to Zentia?</h3>

              <h6 class="">Sign up for an account - It only takes a minute.</h6>

              <form method="POST" class="pt-3 row" action="{{ route('register') }}">
                @csrf
                
                
                <input id="role" type="text" name="role" value="user" hidden>

                <div class="form-group col-lg-6">
                  <label>First and Last Name</label>
                  <input id="name" type="text" class="form-control form-control-lg @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" placeholder="" maxlength="50">

                    @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror

                </div>

                <div class="form-group col-lg-6">
                  <label>E-mail</label>
                  <input id="email" type="email" class="form-control form-control-lg @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}"  placeholder="" maxlength="50">

                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>

               
                
                @php
					$countries = DB::table('country')->get();
				@endphp
				  <div class="form-group col-lg-6">
                     <label>Phone Number</label>
                    <div class="input-group d-flex">
                      <div class="col-5 px-0">
                          <div class="input-group-prepend">
                        <select name="country_code" class="js-example-basic-single h-50 custom-border countrycode-select">
                           @if(count($countries) > 0)
                           @foreach($countries as $country)
                           
                           <option value="{{$country->phonecode}}" {{ (old('country_code') == $country->phonecode ? "selected":"") }}><span id="tt"> {{ $country->iso }}</span> +{{ $country->phonecode }}</option>
                            
                           @endforeach
                           @endif
                        </select>
                      </div>
                      </div>
                      <div class="col-7 px-0">
                          <input id="phone" type="text" class="form-control form-control-lg mobnum @error('phone') is-invalid @enderror" name="phone" value="{{ old('phone') }}" placeholder=""  maxlength="10" style="border-radius: 4px;">
                      </div>
                        @error('phone')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                  </div>
                    
             
                <div class="form-group col-lg-6">
                  <label>Password</label>
                  <input id="password" type="password" class="form-control form-control-lg @error('password') is-invalid @enderror" name="password" maxlength="30">

                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>

                @php
					$timezones = DB::table('timezone')->get();
				@endphp
                <div class="form-group col-lg-12">
                    <label>Timezone</label>
                    <select name="timezone" class="js-example-basic-single h-50 custom-border countrycode-select">
                       @if(count($timezones) > 0)
                       @foreach($timezones as $timezone)
                       
                       <option value="{{ $timezone->Time_Zone }}" {{ (old('timezone') == $timezone->Time_Zone ? "selected":"") }}>( {{ $timezone->Time_Zone }} - {{ $timezone->GMT_Offset }} ) <span id="tt"> {{ $timezone->Country_Name }}</span> </option>
                        
                       @endforeach
                       @endif
                    </select>
                        
                        
                        
                </div>
                <div class="mb-12 col-lg-12">
                  <div class="form-check">
                    <label class="form-check-label text-muted @error('terms_and_conditions') is-invalid @enderror">
                      <input type="checkbox" value="1" name="terms_and_conditions" class="form-check-input "  checked> Accept terms & conditions </label>
                      @error('terms_and_conditions')
                          <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                          </span>
                      @enderror
                  </div>
                  <div class="form-check">
                    <label class="form-check-label text-muted  @error('marketing_and_news') is-invalid @enderror">
                      <input type="checkbox" value="1"  name="marketing_and_news" class="form-check-input " > Accept Marketing and News </label>
                      @error('marketing_and_news')
                          <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                          </span>
                      @enderror
                  </div>
                </div>
                <div class="mb-12 mt-3 col-lg-12 mx-auto text-center ">
                  <div class="col-lg-6 mx-auto"> <button type="submit"  class="btn btn-block btn-primary btn-lg  col-lg-12 font-weight-medium auth-form-btn">Sign Up</button> </div>
                </div>
                <div class="mb-12 pt-4 mt-2 col-lg-12">
                  <h6 class="font-weight-bold">Already have an account? <a href="{{ route('login') }}" class="text-white"> Login</a></h6> </div>

              </form>
              
              <?php

// $countryName = 'fdfs';

// $ch = curl_init("https://api.ipgeolocation.io/timezone?apiKey=5b0b9352f61f4d7597a0c9e4befc3228&location=".$countryName);
// curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
// $resultData = curl_exec($ch);
// curl_close($ch);

// $jsonData = json_decode($resultData, true);
// echo '<pre>'.$jsonData['timezone'].'</pre>';

?>


            </div>

          </div> 

 </div>

        </div>

      </div>

      <!-- content-wrapper ends -->

    </div>

    <!-- page-body-wrapper ends -->

  </div> 

    <!-- page-body-wrapper ends -->

  </div>


     <!-- container-scroller -->
  <!--=======Js========-->
  <script src="{{ URL::asset('theme/vendors/js/vendor.bundle.base.js') }}"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="{{ URL::asset('theme/vendors/chart.js/Chart.min.js') }}"></script>
  <script src="{{ URL::asset('theme/vendors/datatables.net/jquery.dataTables.js') }}"></script>
  <script src="{{ URL::asset('theme/vendors/datatables.net-bs4/dataTables.bootstrap4.js') }}"></script>
  <script src="{{ URL::asset('theme/js/dataTables.select.min.js') }}"></script>
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="{{ URL::asset('theme/js/off-canvas.js') }}"></script>
  <script src="{{ URL::asset('theme/js/hoverable-collapse.js') }}"></script>
  <script src="{{ URL::asset('theme/js/template.js') }}"></script>
  <script src="{{ URL::asset('theme/s/settings.js') }}j"></script>
  <script src="{{ URL::asset('theme/js/todolist.js') }}"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="{{ URL::asset('theme/js/dashboard.js') }}"></script>
  <script src="{{ URL::asset('theme/js/Chart.roundedBarCharts.js') }}"></script>
  <script src="{{ URL::asset('theme/vendors/select2/select2.min.js') }}"></script>
  <script type="{{ URL::asset('theme/vendors/peity/peity.min.js') }}"></script>
  <script src="{{ URL::asset('theme/js/chart.js') }}"></script>

     <!--=======Js========-->

<script src="{{ URL::asset('theme/js/intlTelInput.js') }}"></script>

        <script type="text/javascript">



        if ($(".js-example-basic-single").length) {

    $(".js-example-basic-single").select2();

  }


$("#mobile_code").intlTelInput({

  initialCountry: "in",

  separateDialCode: true,

  // utilsScript: "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/11.0.4/js/utils.js"

});

        </script>
<!--<script>-->
<!--    $("#email").keyup(function(){-->
<!--      var email = $("#email").val();-->
<!--      var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;-->
<!--      if(!regex.test(email)) { -->
<!--          $("#err_email").text("tet");-->
<!--        return false;-->
<!--      }else{ alert("ss");-->
<!--        return true;-->
<!--      }-->
<!--    });-->
<!--</script>-->

</body>
</html>

