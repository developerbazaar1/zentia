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
  <link rel="stylesheet" href="{{ URL::asset('theme/vendors/css/vendor.bundle.base.css') }}">
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

<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/t4t5/sweetalert/v0.2.0/lib/sweet-alert.css">
 <!--=======Head========-->
</head>

<body class="sidebar-dark">
  <div class="container-scroller">
    
    <!--=======nev========-->
      <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row navbar-dark">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="{{url('/')}}"><img class="" src="{{ URL::asset('theme/images/zentia-logo3.png') }}" class="mr-2" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="{{url('/')}}"><img class="" src="{{ URL::asset('theme/images/zentia-logo3.png') }}" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
      
         @php 
            $user = DB::table('users')->where('id', Auth::user()->id )->first();
			$notification = DB::table('notification')->where('user_id', Auth::user()->id )->orderBy('id','DESC')->limit(50)->get();
			$notification_new = DB::table('notification')->where('user_id', Auth::user()->id )->where('status', 'unseen' )->orderBy('id','DESC')->get();
			$notification_old = DB::table('notification')->where('user_id', Auth::user()->id )->where('status', 'seen' )->orderBy('id','DESC')->get();
		@endphp
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="icon-bell mx-0"></i>
              @if(count($notification_new) > 0)
              <span class="count"></span>
              @endif
            </a>
            
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown" style="overflow-y: auto;height: 300px; " >
              <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
              
              @foreach($notification as $note)
              @php $id = $note->id; @endphp
              @if($note->status == 'seen')
              <a href="{{ route('change-notification-status', $id) }}"class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-info">
                    <i class="ti-user mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-normal">{{ $note->notification_msg }}</h6>
                  <p class="font-weight-light small-text mb-0 text-muted">
                    {{ $note->created_at }}
                  </p>
                </div>
              </a>
              @else
              <a href="{{ route('change-notification-status', $id) }}"class="dropdown-item preview-item" style="background-color: #eaeaf1;">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-info">
                    <i class="ti-user mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-normal">{{ $note->notification_msg }}</h6>
                  <p class="font-weight-light small-text mb-0 text-muted">
                    {{ $note->created_at }}
                  </p>
                </div>
              </a>
              @endif
              @endforeach
              
            </div>
          </li>
          
          
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                @if(!empty($user->profile_photo))
               <img src="{{ URL::asset('/'.$user->profile_photo) }}" alt="profile"/>
               @else
               <img  src="{{ URL::asset('theme/images/browse.png') }}" alt="profile"/>
               @endif
             
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a href="{{ route('coach-profile') }}" class="dropdown-item">
                <i class="ti-settings text-primary"></i>
                Profile
              </a>
              <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
                <i class="ti-power-off text-primary"></i>
                Logout
              </a>
            </div>
          </li>
          <!-- <li class="nav-item nav-settings d-none d-lg-flex">
            <a class="nav-link" href="#">
              <i class="icon-ellipsis"></i>
            </a>
          </li> -->
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
     <!--=======nev========-->
   
    <div class="container-fluid page-body-wrapper">
      
     <!--=======nev========-->
       <!--begin::Sidebar-->
      @include('coach.layouts.sidebar')
     <!--=======nev========-->

      <div class="main-panel">
        
        <!-- content-wrapper ends -->
       
        <!--begin::Content-->
        @yield('content')
        <!--end::Content-->


        <!--=======nev========-->
        <!--begin::Footer-->
        @include('coach.layouts.footer')
        <!--=======nev========-->

      </div>
      <!-- main-panel ends -->
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
      <script src="{{ URL::asset('theme/js/settings.js') }}"></script>
      <script src="{{ URL::asset('theme/js/todolist.js') }}"></script>
      <!-- endinject -->
      <!-- Custom js for this page-->
      <script src="{{ URL::asset('theme/js/dashboard.js') }}"></script>
      <script src="{{ URL::asset('theme/js/Chart.roundedBarCharts.js') }}"></script>
      <script src="{{ URL::asset('theme/vendors/select2/select2.min.js') }}"></script>
      <script type="{{ URL::asset('theme/vendors/peity/peity.min.js') }}"></script>
      <script src="{{ URL::asset('theme/js/chart.js') }}"></script>
        <!--=======Js========-->
        
        <script>
    // function convertTZ(date, tzString) {
    //     return new Date((typeof date === "string" ? new Date(date) : date).toLocaleString("en-US", {timeZone: tzString}));   
    // }
                
    $('.countdownpp').each(function(){  
        // alert($(this).attr('value'));
        
            let link = $(this).data("link"); 
            let timer = $(this).data("timer"); //50min
            // let curr_time = $(this).data("curr_time"); //50min
            let id = $(this).data("id"); // 2
            
        // Set the date we're counting down to
            var countDownDate = new Date(timer).getTime();
            
            // Update the count down every 1 second
            var x = setInterval(function() {
            
              // Get today's date and time
              var nowd = new Date();
              var now = new Date((typeof date === "string" ? new Date(nowd) : nowd).toLocaleString("en-US", {timeZone: 'Europe/Brussels'})).getTime();
                
                
                // usage: Asia/Jakarta is GMT+7
               
                // alert(now);
              // Find the distance between now and the count down date
              var distance = countDownDate - now;
          
              // Time calculations for days, hours, minutes and seconds
              var days = Math.floor(distance / (1000 * 60 * 60 * 24))+1;
              var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
              var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
              var seconds = Math.floor((distance % (1000 * 60)) / 1000);
            
            function padLeadingZeros(num, size) {
                var s = num+"";
                while (s.length < size) s = "0" + s;
                return s;
            }
            
              // Display the result in the element with id="demo"
              document.getElementById(id).innerHTML = '<a href="#"  class="btn btn-primary btn-sm btn-rounded custom-padding hover-brder" id="save-chage" style="border-radius: 5px;"><span class="countdowns text-white bg-danger justify-content-center align-items-center fs-18">'+padLeadingZeros(hours, 2)+':</span><span class="countdowns text-white bg-danger  justify-content-center align-items-center fs-18">'+padLeadingZeros(minutes, 2)+':</span><span class="countdowns text-white bg-danger  justify-content-center align-items-center fs-18">'+padLeadingZeros(seconds, 2)+'</span></a>';
   
              if (distance < 0) {
                // clearInterval(x);
                document.getElementById(id).innerHTML = '<a href="'+link+'" class="btn btn-primary btn-sm btn-rounded custom-padding hover-brder" id="save-chage" style="border-radius: 5px;">Join Meeting</a>';
              }else if(distance > 86400000){
                  document.getElementById(id).innerHTML = '<a href="#"  class="btn btn-primary btn-sm btn-rounded custom-padding hover-brder" id="save-chage" style="border-radius: 5px;"><span class="countdown text-white bg-danger d-flex justify-content-center align-items-center fs-18 mx-0">'+days+' Days</span></a>';
              }
              
          
            }, 1000);

    });
    
    
    </script>
    @yield('scripts')
       
</body>

</html>

