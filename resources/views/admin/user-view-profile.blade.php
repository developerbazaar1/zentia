@extends('admin.layouts.header')

@section('styles') 

    

@endsection

@section('content')

        <div class="content-wrapper">

          <!-- alert  -->



          <div class="row mx-3">



             @if (\Session::has('success'))



            <div class="alert alert-success alert-dismissible fade show col-lg-8 mx-auto" role="alert">

            <strong> <i class="mdi mdi-alert-octagon"></i> </strong> {!! \Session::get('success') !!}

            <button type="button" class="close" data-dismiss="alert" aria-label="Close">

              <span aria-hidden="true">&times;</span>

            </button>

            </div>

            @endif







            @if (\Session::has('error'))

            

            <div class="alert alert-success alert-dismissible fade show col-lg-8 mx-auto" role="alert">

            <strong> <i class="mdi mdi-thumb-up-outline"></i> </strong> {!! \Session::get('success') !!}

            <button type="button" class="close" data-dismiss="alert" aria-label="Close">

              <span aria-hidden="true">&times;</span>

            </button>

            </div>

            @endif

          </div>



        

       

       

          <div class="row">

            <div class="col-md-4 grid-margin w-100 bg-img">

              <div class="img-overlay"></div>

              <div class="">

                <div class="">

                <div class="form-group upload">
                <div class="profile-img mt-4">
                <center><span id="att11i" style="color: #626262;">
                @if(!empty($profile->profile_photo))
                <img class="" style="width: 130px; height: 130px; border-radius: 50%; border:2px solid #fff;" src="{{ URL::asset('/'.$profile->profile_photo) }}">
                @else
                <img class="" style="width: 130px; height: 130px; border-radius:50% border:2px solid #fff;" src="{{ URL::asset('theme/images/browse.png') }}">
                @endif
                </span>
                </center>

                </div>
                </div>

              </div>

             </div><br><br><br>

          </div>

           


            <div class="col-md-8 grid-margin stretch-card">

              <div class="card">

                <div class="card-body row">

                   <div class="form-group col-lg-6">

                   <label>First Name</label><br>
                   <label>{{ $profile->name }}</label>

                   </div>

                   <div class="form-group col-lg-6">

                   <label>E-mail</label><br>
                   <label>{{ $profile->email }}</label>

                   </div>


                   <div class="form-group col-lg-6">
                     <label>Country Code</label><br>

                     <label>+{{ $profile->country_code }}</label>
                       
                    </div>



                    <div class="form-group col-lg-6">

                    <label>Phone Number</label><br>
                    <label>{{ $profile->phone }}</label>

                    </div>


                  <div class="form-group col-lg-6">

                  <label>Company</label><br>
                  <label>{{ $profile->company }}</label>

                  </div>

                  



                   <div class="form-group col-lg-6">

                    <label>Country</label><br>

                     @if(count($country) > 0)
                     @foreach($country as $countries)
                     @if ($profile->country == $countries->id || $profile->country_code == $countries->phonecode)
                     <label>{{ $countries->nicename }}</label>
                     
                     @endif
                     @endforeach
                     @endif

                  </div>


                   
                </div>

              </div>

            </div>

         

          </div>

          


       

    

          <div class="row">

            <div class="col-md-12 grid-margin stretch-card">

              <div class="card">

                <div class="card-body">

                  <div class="row">



                    

                   <div class="form-group col-lg-6">

                     <label>Seniority</label><br>

                      @php
                      
                      $seniority = explode(",",$profile->seniority);
                      
                      @endphp

                      @foreach ($seniority as $seniority_id)
                       

                      @php
                      $seniority_id = $seniority_id ; 

                      $get_seniority = DB::table('master_catdata')->where('id', $seniority_id)->orderBy('id','DESC')->get();
                      @endphp

                      @foreach ($get_seniority as $seniority_data)

                      <span class="badge badge-primary">{{ $seniority_data->name }}</span>
                      
                      @endforeach

                      @endforeach



                   </div> 



                   <div class="form-group col-lg-6">

                    <label>Industry</label><br>

                      @php
                      
                      $industry = explode(",",$profile->industry);
                      
                      @endphp

                      @foreach ($industry as $industry_id)
                       

                      @php
                      $indus_id = $industry_id ; 

                      $get_indus = DB::table('master_catdata')->where('id', $indus_id)->orderBy('id','DESC')->get();
                      @endphp

                      @foreach ($get_indus as $indus_data)

                      <span class="badge badge-primary">{{ $indus_data->name }}</span>
                      
                      @endforeach

                      @endforeach


                   </div>





                   <div class="form-group col-lg-6">

                     <label>Business Model</label><br>

                      @php
                      
                      $business_model = explode(",",$profile->business_model);
                      
                      @endphp

                      @foreach ($business_model as $busin_id)
                       

                      @php
                      $business_id = $busin_id ; 

                      $get_business = DB::table('master_catdata')->where('id', $business_id)->orderBy('id','DESC')->get();
                      @endphp

                      @foreach ($get_business as $businesdata)

                      <span class="badge badge-primary">{{ $businesdata->name }}</span>
                      
                      @endforeach

                      @endforeach

                    </div>

                    <div class="form-group col-lg-12">

                      <label for="exampleTextarea1">Headline</label>
                      <p class="text-white">{{ $profile->biography }}</p>

                    </div>


                    <div class="form-group col-lg-12">

                     <label>About Me</label><br>

                      <p class="text-white"> {{ $profile->about_me }} </p>

                   </div>

                  </div>

                  </div>

                </div>


              </div>

            </div>



             </form>

        </div>

        <!-- content-wrapper ends -->

@endsection

@section('scripts')   



<script src="https://cdn.tiny.cloud/1/qagffr3pkuv17a8on1afax661irst1hbr4e6tbv888sz91jc/tinymce/5-stable/tinymce.min.js"></script>

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

document.getElementById("output1i").style.display = "none";

document.getElementById("att1s1i").style.display = "none";



var loadFile1i = function(event) {

document.getElementById("att11i").style.display = "none";

document.getElementById("att1s1i").style.display = "block";

document.getElementById("output1i").style.display = "block";

document.getElementById("img_error").style.display = "none";



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

</script>

@endsection

