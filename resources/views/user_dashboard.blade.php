@extends('user.layouts.header')
@section('styles') 
    
@endsection
@section('content')

   <div class="content-wrapper">
              <div class="row">
                <div class="col-md-12 grid-margin">
                  <div class="row">
                    <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                      <h3 class="font-weight-bold text-white">Dashboard Overview</h3>
                      <h6 class="font-weight-normal mb-0 text-white">All systems are running smoothly!</h6> </div>
                   
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4 grid-margin transparent">
                  <div class="row">
                    <div class="col-md-6 mb-4 stretch-card transparent">
                      <div class="card custom-color6 pb-3">
                        <div class="card-body text-center">
                          <h4 class="mb-4 font-weight-bold">Booking</h4>
                          <br>
                          <p class="fs-30 mb-2 font-weight-bold">{{ $totalBook = count($bookingDone) + count($bookingSchedul) }}</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 mb-4 stretch-card transparent">
                      <div class="card custom-color2 pb-3">
                        <div class="card-body text-center">
                          <h4 class="mb-4 font-weight-bold">Invested </h4>
                          <br>
                           <!--done price-->
                           @php $sumPrice = 0; @endphp
                           
                           @if(!empty($invested_done))
                           
                           @foreach($invested_done as $amount)
                           
                           @php 
                           $price           = explode(',',$amount->paid_amount);
                           $sumPrice        = $sumPrice + array_sum($price);
                           
                           @endphp
                           
                           @endforeach
                           
                           @endif
                           
                           <!--schedule price-->
                           
                           @php $sumPriceTo = 0; @endphp
                           
                           @if(!empty($invested_schedule))
                           
                           @foreach($invested_schedule as $amountTotal)
                           
                           @php 
                           $priceTotal           = explode(',',$amountTotal->paid_amount);
                           $sumPriceTo           = $sumPriceTo + array_sum($priceTotal);
                           
                           @endphp
                           
                           @endforeach
                           
                           @endif
                           
                           
                           
                          <p class="fs-30 mb-2 font-weight-bold">${{ $main_amount = $sumPrice + $sumPriceTo }}</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 mb-4 mb-lg-0 stretch-card transparent">
                      <div class="card custom-color5 pb-3">
                        <div class="card-body text-center">
                          <h4 class="mb-4 font-weight-bold">Donations</h4>
                          <br>
                          <p class="fs-30 mb-2 font-weight-bold">{{ count($donate) }}</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 stretch-card transparent">
                      <div class="card custom-color4 pb-3">
                        <div class="card-body text-center">
                          <h4 class="mb-4 font-weight-bold">Sessions</h4>
                          <br>
                           
                           @php $sumMinitue = 0; @endphp
                           
                           @if(!empty($paid_session))
                           
                           @foreach($paid_session as $miniteTotal)
                           
                           @php 
                           $minTotal             = explode(',',$miniteTotal->paid_session);
                           $sumMinitue           = $sumMinitue + array_sum($minTotal);
                           
                           @endphp
                           
                           @endforeach
                           
                           @endif
                           
                           
                          <p class="fs-30 mb-2 font-weight-bold">{{ $sumMinitue }} </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-8 grid-margin stretch-card">
                  @php
                   $booking = DB::table('booking')->where('booking.user_id', Auth::user()->id )->where('booking.status', 'scheduled')->join('users', 'users.id', '=', 'booking.coach_id')->select('booking.*', 'users.name')->get();
                  @endphp
                  <div class="card">
                    <div class="card-body">
                      <!--<p class="card-title mb-0 text-white">Scheduled Meeting</p>-->
                      <div class="table-responsive">
                          @if(count($booking) > 0)
                        <table class="table table-striped">
                          <thead class="table-bg">
                            <tr>
                              <th class="text-white">S.No.</th>
                              <th class="text-white">Meeting With</th>
                              <th class="text-white">Price</th>
                              <th class="text-white">Start-time</th>
                              <th class="text-white">Session</th>
                              <th class="text-white">Meeting</th>
                            </tr>  
                          </thead>
                          <tbody class="table-border">
                             
                            @php $i = 1; @endphp
                            @foreach($booking as $book)
                         
                            <tr class=" countdownpp"  data-timer="<?=$book->meeting_start_time?>" data-curr_time="<?=date('Y-m-d H:i:s');?>" data-id="demo<?=$book->id;?>" data-link="<?=$book->meeting_link?>">
                              <td>{{ $i }}</td>
                              <td>{{ $book->name}}</td>
                              <td class="font-weight-bold">${{ $book->paid_amount}}</td>
                              
                               @php
    					    $user_timezone = Auth::user()->timezone;
                            $datetime = new DateTime($book->meeting_start_time);
                            $la_time = new DateTimeZone($user_timezone);
                            $datetime->setTimezone($la_time);
                            $ttn_user =  $datetime->format('Y-m-d H:i:s');
                            @endphp
    					   
                              <td>{{ $ttn_user }}</td>
                              <td>{{ $book->meeting_session}} minutes</td>
                              <td id="demo<?=$book->id;?>"  value='<?php echo $book->meeting_start_time;?>'></td>
                            </tr>
                            @php $i++; @endphp
                           
                            
                            
                            @endforeach
                           
                          </tbody>
                        </table>
                        @else
                        <tr>
                            <div class="text-center">
                                <img src="{{ URL::asset('assets/media/pay-wait.png') }}" class="pay-gif mb-4">
                                <h4 class="text-main not-scheduled-text">You don't have any meeting scheduled yet</h4>
                            </div>
                        </tr>
                        @endif
                      </div>
                    </div>
                  </div>
                </div>
                
              </div>
              
            </div>
      
@endsection
@section('scripts')   
@endsection



