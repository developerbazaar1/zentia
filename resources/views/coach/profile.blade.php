@extends('coach.layouts.header')
@section('styles') 
@endsection
@section('content')
<div class="content-wrapper">
   
    @if($user->status == '1' && !empty($user->price_20) && !empty($user->expertise) && !empty($user->about_me))
        @if(!empty($user->available_slots))
        <div class="alert alert-success alert-dismissible fade show col-lg-8 mx-auto" role="alert">
          <strong> <i class="mdi mdi-thumb-up-outline"></i> Your profile and calendar has been updated and saved. Our team will look through it and approve or provide feedback shortly.</strong> 
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          </button>
        </div>
        @else
            <div class="alert alert-success alert-dismissible fade show col-lg-8 mx-auto" role="alert">
              <strong> <i class="mdi mdi-thumb-up-outline"></i> Your profile is updated and saved.Please update your calender too.</strong> 
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
              </button>
            </div>
        @endif
    @endif
    
    @if($user->status == '1' &&  empty($user->price_20) && empty($user->expertise) && empty($user->about_me))
        <div class="alert alert-danger alert-dismissible fade show col-lg-8 mx-auto" role="alert">
          <strong>Please update your profile.</strong> 
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          </button>
        </div>
    @endif
    
    
    
    
    
  
   @if($message = Session::get('success_done'))
   <div class="alert alert-success alert-dismissible fade show col-lg-8 mx-auto" role="alert">
      <strong> <i class="mdi mdi-thumb-up-outline"></i> {{ $message }}</strong> 
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      </button>
   </div>
   @endif
   @if($message = Session::get('error_done'))
   <div class="alert alert-danger alert-dismissible fade show col-lg-8 mx-auto" role="alert">
      <strong> <i class="mdi mdi-thumb-up-outline"></i> {{ $message }}</strong> 
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      </button>
   </div>
   @endif 
   <form action="{{route('coach-update-profile' )}}"  enctype="multipart/form-data" id="editform2" method="post">
      {{ csrf_field() }}
      <div class="row">
         <div class="col-md-4 grid-margin w-100 bg-img">
            <div class="img-overlay"></div>
            <div class="">
               <div class="">
                  <div class="form-group upload">
                     <!-- <label class="">Upload Profile Images</label> -->
                     <div class="profile-img mt-4">
                        <input name="profile_image_old" value="@if(!empty($user->profile_photo)){{old('profile_photo', $user->profile_photo)}}@endif" id="img1_old" type="hidden" class="form-control" >
                        <input type="file"  id="img1" name="profile_image" accept="image/*" style="opacity: 0" onchange="loadFile1i(event)" >
                        <center><img id="output1i" style="width: 130px; height: 130px; display: none;"></center>
                        <center><span id="att11i" style="color: #626262;">
                           @if(!empty($user->profile_photo))
                           <img class="" style="width: 130px; height: 130px; border-radius: 50%; border:2px solid #fff;" src="{{ URL::asset('/'.$user->profile_photo) }}">
                           @else
                           <img class="" style="width: 130px; height: 130px; border-radius:50% border:2px solid #fff;" src="{{ URL::asset('theme/images/browse.png') }}">
                           @endif
                           </span>
                        </center>
                        <center><span id="att1s1i" onclick="hideatt1i()" style="color: red; display: none;">Remove File</span></center>
                     </div>
                  </div>
               </div>
            </div>
            <br><br><br>
            <center>
               <h3 class="text-white text-center">Upload Profile Images</h3>
            </center>
         </div>
         <div class="col-md-8 grid-margin stretch-card">
            <div class="card">
               <div class="card-body row">
                  <div class="form-group col-lg-6">
                     <label>First & Last Name</label>
                     <input type="text" class="form-control form-control-lg" name="name" value="@if(!empty($user->name)){{old('name', $user->name)}}@endif" id="name" placeholder="First Name" maxlength="50">
                     <div  style="color:red">{{ $errors->first('name') }}</div>
                  </div>
                 
                  <div class="form-group col-lg-6">
                     <label>E-mail</label>
                     <input type="email" name="email" value="@if(!empty($user->email)){{old('email', $user->email)}}@endif" class="form-control form-control-lg" id="email" placeholder="abc@gmail.com" maxlength="100" style="background-color: transparent !important;" readonly>
                  </div>

                  <div class="form-group col-lg-6">
                     <label>Phone Number</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <select name="country_code" class="js-example-basic-single w-100 h-50 custom-border">
                           @if(count($countries) > 0)
                           @foreach($countries as $country)
                           @if ($user->country_code == $country->phonecode)
                           <option value="{{ $country->phonecode }}" selected><span id="tt"> {{ $country->iso }}</span> +{{ $country->phonecode }}</option>
                           @else
                           <option value="{{$country->phonecode}}" {{ (old('country_code') == $country->phonecode ? "selected":"") }}><span id="tt"> {{ $country->iso }}</span> +{{ $country->phonecode }}</option>
                           @endif
                           @endforeach
                           @endif
                        </select>
                      </div>
                      <!-- <input type="text" class="form-control" aria-label="Text input with dropdown button"> -->
                      <input type="text" name="phone" aria-label="Text input with dropdown button" value="@if(!empty($user->phone)){{old('phone', $user->phone)}}@endif"  class="form-control" id="phone" placeholder="+93-xxxxxxxx" maxlength="10" style="height: 101%; border-radius: 4px;">
                     <div  style="color:red">{{ $errors->first('phone') }}</div>
                    </div>
                  </div>

                  <div class="form-group col-lg-6">
                     <label>Country</label>
                     <select name="country" class="js-example-basic-single w-100 h-50">
                       

                           @if(count($countries) > 0)
                           @foreach($countries as $country)
                           @if ($user->country == $country->id || $user->country_code == $country->phonecode)
                           <option value="{{ $country->id }}" selected>{{ $country->nicename }}</option>
                           @else
                           <option value="{{$country->id}}" {{ (old('country') == $country->id ? "selected":"") }}>{{$country->nicename}}</option>
                           @endif
                           @endforeach
                           @endif
                     </select>
                    
                  </div>
                  <div class="form-group col-lg-6">
                     <label>Company</label>
                     <input type="text" name="company" value="@if(!empty($user->company)){{old('company', $user->company)}}@else{{ old('company') }}@endif"  class="form-control" id="company" placeholder="" maxlength="50">
                     <div  style="color:red">{{ $errors->first('company') }}</div>
                  </div>
                   @php
					$timezones = DB::table('timezone')->get();
				  @endphp
                  <div class="form-group col-lg-6">
                    <label>Timezone</label>
                    <select name="timezone" class="js-example-basic-single w-100 h-50">
                       @if(count($timezones) > 0)
                       @foreach($timezones as $timezone)
                       @if ($user->timezone == $timezone->Time_Zone )
                       <option value="{{ $timezone->Time_Zone }}" selected>( {{ $timezone->Time_Zone }} - {{ $timezone->GMT_Offset }} ) <span id="tt"> {{ $timezone->Country_Name }}</span></option>
                       @else
                       <option value="{{ $timezone->Time_Zone }}" {{ (old('timezone') == $timezone->Time_Zone ? "selected":"") }}>( {{ $timezone->Time_Zone }} - {{ $timezone->GMT_Offset }} ) <span id="tt"> {{ $timezone->Country_Name }}</span> </option>
                       @endif
                       @endforeach
                       @endif 
                    </select>
                  </div>
                  
               </div>
            </div>
         </div>
      </div>
      <div class="row">
         <div class="col-md-12 mb-3 stretch-card pl-0">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     @php  
                     $ex_array = $user->expertise; 
                     $arr_ex = explode(",",$ex_array); 
                     @endphp
                     <div class="form-group col-lg-6">
                        <label>Expertise</label> 
                        <select class="expertise w-100"  name="expertise[]" multiple="multiple">
                           @if(count($expertises) > 0)
                           @foreach($expertises as $expertise)
                           @if($ex_array)
                           
                                @if(old('expertise'))
                                    @if(in_array("$expertise->id", old('expertise')))
                                        <option value="{{ $expertise->id }}" selected>{{ $expertise->name }}</option>
                                    @else
                                        <option value="{{ $expertise->id }}">{{ $expertise->name }}</option>
                                    @endif
                                @else
                                    @if(in_array("$expertise->id", $arr_ex))
                                        <option value="{{ $expertise->id }}" selected>{{ $expertise->name }}</option>
                                    @else
                                        <option value="{{ $expertise->id }}">{{ $expertise->name }}</option>
                                    @endif
                                @endif
                                
                           @else
                           
                                @if(old('expertise'))
                                    @if(in_array("$expertise->id", old('expertise')))
                                        <option value="{{ $expertise->id }}" selected>{{ $expertise->name }}</option>
                                    @else
                                        <option value="{{ $expertise->id }}">{{ $expertise->name }}</option>
                                    @endif
                                @else
                                    <option value="{{ $expertise->id }}">{{ $expertise->name }}</option>
                                @endif
                                
                           @endif
                           @endforeach
                           @endif
                        </select>
                        <div  style="color:red">{{ $errors->first('expertise') }}</div>
                     </div>

                     @php  
                     $sen_array = $user->seniority; 
                     $arr_sen = explode(",",$sen_array); 
                     @endphp
                     <div class="form-group col-lg-6">
                        <label>Seniority</label>
                        <select class="seniority w-100" name="seniority[]" multiple="multiple">
                           @if(count($seniorities) > 0)
                           @foreach($seniorities as $seniority)
                           @if($arr_sen)
                           
                                @if(old('seniority'))
                                    @if(in_array("$seniority->id", old('seniority')))
                                        <option value="{{ $seniority->id }}" selected>{{ $seniority->name }}</option>
                                    @else
                                        <option value="{{ $seniority->id }}">{{ $seniority->name }}</option>
                                    @endif
                                @else
                                    @if(in_array("$seniority->id", $arr_sen))
                                        <option value="{{$seniority->id}}" selected >{{$seniority->name}}</option>
                                    @else
                                        <option value="{{$seniority->id}}" >{{$seniority->name}}</option>
                                    @endif
                                @endif
                                
                           @else
                           
                                @if(old('seniority'))
                                    @if(in_array("$seniority->id", old('seniority')))
                                        <option value="{{$seniority->id}}" selected>{{$seniority->name}}</option>
                                    @else
                                        <option value="{{$seniority->id}}" >{{$seniority->name}}</option>
                                    @endif
                                @else
                                    <option value="{{$seniority->id}}" >{{$seniority->name}}</option>
                                @endif
                            
                           
                           @endif
                           @endforeach
                           @endif
                         
                        </select>
                        <div  style="color:red">{{ $errors->first('seniority') }}</div>
                     </div>

                     @php  
                     $ind_array = $user->industry; 
                     $arr_ind = explode(",",$ind_array); 
                     @endphp
                     <div class="form-group col-lg-6">
                        <label>Industry</label>
                        <select class="industry w-100" name="industry[]" multiple="multiple">
                           @if(count($industries) > 0)
                           @foreach($industries as $industry)
                           @if($arr_ind)
                           
                                @if(old('industry'))
                                    @if(in_array("$industry->id", old('industry')))
                                        <option value="{{ $industry->id }}" selected>{{ $industry->name }}</option>
                                    @else
                                        <option value="{{ $industry->id }}">{{ $industry->name }}</option>
                                    @endif
                                @else
                                    @if(in_array("$industry->id", $arr_ind))
                                        <option value="{{$industry->id}}" selected>{{$industry->name}}</option>
                                    @else
                                        <option value="{{$industry->id}}" >{{$industry->name}}</option>
                                    @endif
                                @endif
                                
                                
                           @else
                           
                                @if(old('industry'))
                                    @if(in_array("$industry->id", old('industry')))
                                        <option value="{{ $industry->id }}" selected>{{ $industry->name }}</option>
                                    @else
                                        <option value="{{ $industry->id }}">{{ $industry->name }}</option>
                                    @endif
                                @else
                                    <option value="{{ $industry->id }}">{{ $industry->name }}</option>
                                @endif
                                
                           @endif
                           @endforeach
                           @endif
                           
                        </select>
                        <div  style="color:red">{{ $errors->first('industry') }}</div>
                     </div>

                     @php  
                     $b_array = $user->business_model; 
                     $arr_b = explode(",",$b_array); 
                     @endphp
                     <div class="form-group col-lg-6">
                        <label>Business Model</label>
                        <select class="business-model w-100" name="business_model[]" multiple="multiple">
                           @if(count($business_models) > 0)
                           @foreach($business_models as $business_model)
                           @if($arr_b)
                           
                                @if(old('business_model'))
                                    @if(in_array("$business_model->id", old('business_model')))
                                        <option value="{{$business_model->id}}" selected>{{$business_model->name}}</option>
                                    @else
                                        <option value="{{$business_model->id}}" >{{$business_model->name}}</option>
                                    @endif
                                @else
                                    @if(in_array("$business_model->id", $arr_b))
                                        <option value="{{$business_model->id}}" selected>{{$business_model->name}}</option>
                                    @else
                                        <option value="{{$business_model->id}}" >{{$business_model->name}}</option>
                                    @endif
                                @endif
                                
                                
                           @else
                           
                                @if(old('business_model'))
                                    @if(in_array("$business_model->id", old('business_model')))
                                        <option value="{{$business_model->id}}" selected>{{$business_model->name}}</option>
                                    @else
                                        <option value="{{$business_model->id}}" >{{$business_model->name}}</option>
                                    @endif
                                @else
                                    <option value="{{$business_model->id}}" >{{$business_model->name}}</option>
                                @endif
                                
                           
                           @endif
                           @endforeach
                           @endif
                         
                        </select>
                        <div  style="color:red">{{ $errors->first('business_model') }}</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
     
      <div class="row">

            <div class="col-md-12 mb-3 stretch-card pl-0">

              <div class="card">

                <div class="card-body">

                  <div class="row">

                     <div class="form-group col-lg-12 mb-2">

                        <h5 class="text-white">Headline</h5>

                     </div>   



                    <div class="form-group col-lg-12">

                     

                      <textarea class="form-control" name="biography" id="biography" placeholder="Tell us a bit about yourself, your career milestones and some of your proudest achievements. What areas you can offer advice within?" rows="1">@if(!empty($user->biography)){{old('biography', $user->biography)}}@else{{ old('biography') }}@endif</textarea>
                       <div  style="color:red">{{ $errors->first('biography') }}</div>
                      

                    </div>





                     <div class="form-group col-lg-12 mb-2">

                        <h5 class="text-white">About Me </h5>

                     </div>   

                    <div class="form-group col-lg-12">

                        

                        <textarea class="form-control" name="about_me" id="about_me" placeholder="In the Field you can tell people a bit about yourself, your skills, your key expertise and some bullets about what matters you would like to advice within." rows="10">@if(!empty($user->about_me)){{old('about_me', $user->about_me)}}@else{{ old('about_me') }}@endif</textarea>
                        <div  style="color:red">{{ $errors->first('about_me') }}</div>

                    

                    

                   </div>



                </div>

             </div>

          </div>

       </div>

    </div>

      <div class="row">
         <div class="col-md-12 grid-margin stretch-card pl-0">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="form-group col-lg-12">
                        <h5>Define pricing</h5>
                     </div>
                     <div class="form-group col-lg-4">
                        <label>Pricing 20 min.</label>
                        <input type="text" name="price_20_min" value="@if(!empty($user->price_20)){{old('price_20_min', $user->price_20)}}@else{{ old('price_20_min') }}@endif"  class="form-control form-control-lg" id="price_20_min" placeholder="$" maxlength="10">
                        <div  style="color:red">{{ $errors->first('price_20_min') }}</div>
                     </div>
                     <div class="form-group col-lg-4">
                        <label>Pricing 40 min.</label>
                        <input type="text" name="price_40_min" value="@if(!empty($user->price_40)){{old('price_40_min', $user->price_40)}}@else{{ old('price_40_min') }}@endif"  class="form-control form-control-lg" id="price_40_min" placeholder="$" maxlength="10">
                        <div  style="color:red">{{ $errors->first('price_40_min') }}</div>
                     </div>
                     <div class="form-group col-lg-4">
                        <label>Pricing 60 min.</label>
                        <input type="text" name="price_60_min" value="@if(!empty($user->price_60)){{old('price_60_min', $user->price_60)}}@else{{ old('price_60_min') }}@endif"  class="form-control form-control-lg" id="price_60_min" placeholder="$" maxlength="10">
                        <div  style="color:red">{{ $errors->first('price_60_min') }}</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   
      <div class="form-group col-lg-12 mt-2 text-center">

         <button  type="submit"  class="btn btn-primary btn-sm btn-rounded custom-padding hover-brder" id="save-chage" style="border-radius: 5px;">Save Changes</button>

      </div>

   </form>
</div>
<!-- content-wrapper ends -->
@endsection
@section('scripts')  
       <!--=======Js========-->



        <!-----Tiny Editer----->

        <script src="https://cdn.tiny.cloud/1/qagffr3pkuv17a8on1afax661irst1hbr4e6tbv888sz91jc/tinymce/5-stable/tinymce.min.js"></script>

          <script src="https://cdn.tiny.cloud/1/qagffr3pkuv17a8on1afax661irst1hbr4e6tbv888sz91jc/tinymce/5-stable/tinymce.min.js"></script>

          <script src="{{ URL::asset('theme/js/intlTelInput.js') }}"></script>

          <script src="https://cdn.rawgit.com/t4t5/sweetalert/v0.2.0/lib/sweet-alert.min.js"></script>

        <!-----Tiny Editer----->





<script type="text/javascript">



/*Editer*/

tinymce.init({

  selector: 'textarea#about-me',

  height: 250,

  menubar: false,

  plugins: [

    'advlist autolink lists link image charmap print preview anchor',

    'searchreplace visualblocks code fullscreen',

    'insertdatetime media table paste code help wordcount'

  ],

  toolbar: 'undo redo | formatselect | ' +

  'bold italic backcolor | alignleft aligncenter ' +

  'alignright alignjustify | bullist numlist outdent indent | ' +

  'removeformat | help',

  content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'

});



  /*Editer*/





 (function($) {

  'use strict';



  if ($(".js-example-basic-single").length) {

    $(".js-example-basic-single").select2();

  }

  if ($(".expertise").length) {

   /* $(".expertise").select2();*/

   $(".expertise").select2({ maximumSelectionLength: 3, });

    

  }



  if ($(".seniority").length) {

    /* $(".seniority").select2();*/

        $(".seniority").select2({ maximumSelectionLength: 3, });

  }



  if ($(".industry").length) {

    /* $(".industry").select2();*/

     $(".industry").select2({ maximumSelectionLength: 3, });



  }





   if ($(".business-model").length) {

      /*$(".business-model").select2();*/

      $(".business-model").select2({  maximumSelectionLength: 3, });

  }



   if ($(".availability").length) {

      $(".availability").select2();

     /* $(".availability").select2({  maximumSelectionLength: 3, });*/

  }



  



})

(jQuery);









$('.file-input').change(function(){

var curElement = $('.image');

console.log(curElement);

var reader = new FileReader();

reader.onload = function (e) {

// get loaded data and render thumbnail.

curElement.attr('src', e.target.result);

};

// read the image file as a data URL.

reader.readAsDataURL(this.files[0]);

});



        </script>



        <script>



          /*image upload*/



document.getElementById("output1i").style.display = "none";

document.getElementById("att1s1i").style.display = "none";



var loadFile1i = function(event) {

document.getElementById("att11i").style.display = "none";

document.getElementById("att1s1i").style.display = "block";

document.getElementById("output1i").style.display = "block";

var output1i = document.getElementById('output1i');

output1i.src = URL.createObjectURL(event.target.files[0]);

document.getElementById("hideset1i").style.display = "none";

};

function hideatt1i() {

document.getElementById("output1i").style.display = "none";

document.getElementById("att11i").style.display = "block";

document.getElementById("att1s1i").style.display = "none";

document.getElementById("img1").value = null;





}

/*image upload*/



/*intlTelInput*/



$("#mobile_code").intlTelInput({

  initialCountry: "in",

  separateDialCode: true,

 

});



/*intlTelInput*/

  

  /*Sweet alert*/



document.getElementById('save-chage_').onclick = function(){

  swal("Good !", "Yours chages is Done !", "success");

};

   

  /*Sweet alert*/

</script>
@endsection
