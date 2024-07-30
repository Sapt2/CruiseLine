<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--AOS-->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <!--BOOTSTRAP CSS-->
  <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">-->
  <link rel="stylesheet" href="../backend/styles.css">
  
  
  <!--FONT AWSOME-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
  <!-- Google Font -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Bad+Script&family=Poppins:ital,wght@1,200&display=swap" rel="stylesheet">
  <script>
        function funalert()
        {
        alert("Your record has been saved!\n WE will get back to you soon!")
    }
    </script>


  <body>
<form action="http://localhost:8080/MAJOR_PROJECT/lost_found" method="POST"
      onsubmit="funalert()">
<div class="form-control mt-5" style="width: 60%;left:20%;position: absolute;
                                 padding-bottom: 10px;background-color: rgba(25,25,124);">
                            <h2 style="text-align:center;color:white;padding-top: 15px;" >
                  Where did you lose your item?</h2>
              <h3 class="heading" style="text-align:left;margin-left: 25px;">Your Email</h3>
<input type="email" name="email" placeholder="Your Email Address" style="padding:10px;width: 90%;" required>
              <h5 style="margin: 0;color:rgb(178, 190, 181);text-align:left;margin-left: 25px;">(Enter a valid E-mail address you will like us to contact on)</h5>
              
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Cell Phone
              </h3>
<input type="text" name="phone" placeholder="Phone Number" style="padding:10px;width: 90%;" required>
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Ship
              </h3>
<select name="ship" id="ship" style="padding:10px;width: 93%;background-color: rgb(209, 210, 212);text-align:left;" required="">
                     <option disable="" selected="" style="background-color: rgb(72, 71, 71);color: aliceblue;">-SELECT-</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Ganges Voyagar</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">The Empress</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">M/Y Pegasus</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">The Oberoi Zahara</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">The Oberoi Philae Nile Cruiser</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Grand Princess</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Majestic Princess</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Norweign Jewel</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Norweign Spirit</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Celebrity Edge</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Celebrity Eclipse</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Celebrity Solitice</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Pacific Explorer</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Norweign Star</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Carnival Venezia</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Antractica 21</option>
              </select>
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Sail Date
              </h3>
<input type="text" name="sail_date" placeholder="Departure Date" 
                     onfocus="(this.type='date')" style="padding:10px;width: 90%;" required="">
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Departure Port
              </h3>
<input type="text" name="departure_port" placeholder="Departure Port" style="padding:10px;width: 90%;" required=""><br><br>
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Location Item/Bag Was Lost
              </h3>
<select name="location" id="ship" style="padding:10px;width: 93%;;background-color: rgb(209, 210, 212);text-align:left;" required="">
                     <option disable="" selected="" style="background-color: rgb(72, 71, 71);color: aliceblue;">-SELECT-</option>
                     <option>spa</option>
                     <option>cafe</option>
                     <option>Resturant</option>
                     <option>Room</option>
              </select>
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Debark Port
              </h3>
<input type="text" name="debark_port" placeholder="Debark Port" style="padding:10px;width: 90%;" required="">
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Debarkation Date
              </h3>
<input type="text" name="debarkation_date" placeholder="Debarkation Date" onfocus="(this.type='date')" style="padding:10px;width: 90%;" required="">
              <br><br>
              <h2 style="text-align:center;color:white;padding-top: 15px;">What did you lose?</h2>
                                
                                 <h3 class="heading" style="text-align:left;margin-left: 20px;">
                                        Item Type
                                 </h3>
<select name="item_type" id="item_type" style="padding:10px;width: 93%;background-color: rgb(209, 210, 212);text-align:left;" required>
                                        <option disable selected style="background-color: rgb(72, 71, 71);color: aliceblue;">-Item Type-</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Bag/Purse</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Air Buds</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Camera</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Credit Card</option>
                                 </select>
                                 <h3 class="heading" style="text-align:left;margin-left: 20px;">
                                        Item Description
                                 </h3>
<input type="text" name="item_description" placeholder="Please Describe color or other Details" style="padding:10px;width: 90%;height: 150px;" required>
                                 <p  style="margin: 0;color:red;text-align:left;margin-left: 20px;">(250 Character Left)</p>
                                 <h3 class="heading" style="text-align:left;margin-left: 20px;">
                                        Lost Date
                                 </h3>
<input type="text" name="lost_date" placeholder="Departure Date" onfocus="(this.type='date')" style="padding:10px;width: 90%;" required="">
                                <br><br>
                                
                                <h2 style="text-align:center;color:white;padding-top: 15px;">Where did you want your item back?</h2><br>
                                
                                 <p style="text-align:center;font-size: large;font-style: italic; color: white;">*Please provide the shipping address where you want your item shipped</p>
                                 <h3 class="heading" style="text-align:left;margin-left: 20px;">
                                        First Name
                                 </h3>
<input type="text" name="first_name" placeholder="First Name" style="padding:10px;width: 90%;" required>
                                 <h3 class="heading" style="text-align:left;margin-left: 20px;">
                                        Last Name
                                 </h3>
<input type="text" name="last_name" placeholder="Last Name" style="padding:10px;width: 90%;" required>
                                 <h3 class="heading" style="text-align:left;margin-left: 20px;">
                                        Country
                                 </h3>
<select name="country" id="country" style="padding:10px;width: 93%;background-color: rgb(209, 210, 212);" required>
                                    <option disable="" selected="" style="background-color: rgb(72, 71, 71);color: aliceblue;">-SELECT-</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">India</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Australia</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Alaska</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">South America</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">North America</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Europe</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Antractica</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Africa</option>
                                        <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Hawaii</option>
                                 </select>
                                 <h3 class="heading" style="text-align:left;margin-left: 20px;">
                                        State
                                 </h3>
<input type="text" name="state" placeholder="State" style="padding:10px;width: 90%;" required>
                                 <h3 class="heading" style="text-align:left;margin-left: 20px;">
                                        Address1
                                 </h3>
<input type="text" name="address" placeholder="Street Address" style="padding:10px;width: 90%;" required>
                                 <p  style="margin: 0;color:red;text-align:left;margin-left: 20px;">(35 Characters Left)</p>
                                 <h3 class="heading" style="text-align:left;margin-left: 20px;">
                                        Zip Code
                                 </h3>
<input type="text" name="zip_code" placeholder="Zip Code/Postal COde" style="padding:10px;width: 90%;" required>
                                 <h3 class="heading" style="text-align:left;margin-left: 20px;">
                                        City
                                 </h3>
<input type="text" name="city" placeholder="City" style="padding:10px;width: 90%;" required><br><br>
<input type="submit"  value="Submit">                                
                                                            
                                               
            </div>  </form>  
</body
</html>