<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

   
       *{

        padding: 0;
        margin: 0;
      background: linear-gradient(top reight,rgb(208, 133, 133),rgb(175, 148, 148),rgb(92, 66, 66));
       }
        .about-1 {
            width: 100%;
            height: 400px;
            display: grid;
            grid-template-columns: 2fr 2fr;

        }

        #part-1 {
            grid-column-start: 1;
            grid-column-end: 1;
            text-align: center;
            padding: 20px;
            margin: 5px;

        }

        #part-2 {
            grid-column-start: 2;
            grid-column-end: 2;
            justify-content: center;
            padding: 50px;
            margin: 10px;

        }
    

        #bgimg{
            width: 500px;
            height: 300px;
            padding-left: 0%;
            padding-right: 20px;
            margin: 5px;
        }


        #paraspan {
            color: rgb(37, 136, 235);
        }

        .navbarclass {
            top: 0px;
            position:sticky;
            height: 150px;
            width: 100%;
            background-image: linear-gradient(to top right, rgb(36, 35, 35),rgb(78, 74, 66),rgb(55, 55, 6),rgb(29, 32, 29));

        }

        .navbarclass .aboutustext{
            color: #82b0e9cb;
            text-align: center;
            display:inline-table;
            text-justify:newspaper;
        }
        .navbarclass .aboutustext p{
            color: #FFFFFF;
        }
      
        .small-container{
            max-width: min-content;
            margin: auto;
            padding-right: 25px;
            padding-left: 25px;
        }
        .small-container .row {
      
            display: flex;
         
            justify-content: space-around;
        }  
        
        .col-3{
           
            flex-basis: 30%;
            min-width: 250px;
            padding: 20px;
            margin: 10px;
        }
        .small-container .categories  .row .col-3 img{
            width: 100%;
            height: 300px;
        }
        .ourteam{
            height: 50px;
            width: 100%;
            font-size: x-large;
            color: rgb(86, 219, 216);
            text-align: center;
            padding-top: 30px;
            background: linear-gradient(rgb(122, 122, 123),rgb(74, 75, 77));
        }
        .footer{
            background: rgb(33, 35, 52);
            color: azure;
            height: 300px;
            display: flex;
        }
        #footlogo
        {
            height: 80px;
            min-width: 40%;
            width: 40%;
            cursor: pointer;
            filter: grayscale(100%);
        }

        #footlogo:hover{   
            filter: grayscale(0);   
        }
        .quaitys
        {
            height: 100px;
            width: 100%;
            display: flex;
            color: #f2f3f7;
            align-items:center;
            background:linear-gradient(rgb(109, 200, 195),rgb(26, 144, 174),rgb(28, 79, 104));
        }
        .quaitys .cols{
            padding: 25px;

            align-items: center;
            margin-right: 80px;
            margin-left: 50px;
            text-align: center;
        }
        .quiklinks
        {
            margin-top: 10px;
            padding: 20px;
        }
        .enqury
        {
           
            padding: 20px;
            margin-left: 0%;
        }
        .topproc{
            margin-top: 200px;
            padding: 20px;
        }
        .btn{
            display: inline-block;
            background: #15e42d;
            color: rgb(2, 31, 57);
            padding: 5px 20px;
            margin: 20px;
            border-radius: 30px;
            transition: 0.8s;
        }
        a{
        text-decoration: none;
        }
        .btn:hover{
            color: blue;
            background: rgb(143, 154, 174);
        }
        .graph img{
            padding-left: 30px;
            height: 350px;
        }
        .graph
        {
            display: flex;
        }</style>
<title>Insert title here</title>
</head>
<body>
  <div class="about-page">
        <div class="navbarclass">
            <div class="aboutustext">

                <h1>About us</h1>
                <p>MAX Hospital provides global comprehensive healthcare as preferred destination of healthcare. Its
                    highly
                    qualified and experienced medical professionals offer best in class expert care to the patients
                    round-the-clock.</p>
                <p>
                    healthcare as preferred destination of healthcare. Its
                    highly
                    qualified and experienced medical professionals offer best in class expert care to the patients
                    round-the-clock.</p>
                <p>Our endeavor is to provide modern medical care to our patients, encourage research activities</p>
            </div>
        </div>

        <div class="header">

            <div class="about-1">
                <div id="part-1">
                    <div>
                        <img id="bgimg"
                            src="https://i.pinimg.com/736x/7e/8a/8d/7e8a8d3f3e173ca67e18d2f42189ca2b--medical-quotes-medical-school.jpg">
                           
                        </div>
                </div>
                <div id="part-2">
                    <h1>Why choose us</h1>
                    <p>Hospitals is one of the fastest growing chains of hospitals with proven credentials in delivering
                        excellent care for a wide range of tertiary healthcare services with personalized and ethical
                        Next
                        Gen Medicare. While its clinical outcomes are on par with international standards, PACE -
                        through
                        relentless research and innovation; successfully delivers advanced procedures at a fraction of
                        the
                        international costs.
                    </p>
                    <p>Hospitality is both a concept as well as an industry. The term "hospitality" refers to the
                        relationship between a guest and a host. If you invite a friend or family member over to your
                        home
                        for dinner, for example, you'll perform hospitality by accommodating the guest's needs.</p>
                </div>
            </div>
            <div class="visions">

                <div class="vision"></div>
                <div class="mission"></div>
                <div class="team"></div>
            </div>
            <div class="quaitys">

                <div class="cols">
                    <h2>3.2 M+</h2>
                    <h4>international Patients</h4>
                </div>
                <div class="cols">
                    <h2>2300+</h2>
                    <h4>Specialised Doctors</h4>
                </div>
                <div class="cols">
                    <h2>6600+</h2>
                    <h4>Trained Nurses</h4>
                </div>
                <div class="cols">
                    <h2>14+</h2>
                    <h4>Top Hospitals</h4>
                </div>
            </div>
            <div class="graphs">
            <div class="graph">
                <img src="https://miro.medium.com/max/1876/1*e8IGCUj0lpPJGCjZNXMUcA.gif" height="200px" width="50%">
                <h1 style="padding:20px ;margin: 20px;"><p>
                    <ul>
                        <li> * Mortality</li>
                        <li> * Safety of care</li>
                        <li> * Readmission</li>
                        <li> * Patient experience</li>
                    </ul>
                </p></h1>
            </div>
        </div>

            <div class="ourteam">
                <h2>Our Team</h2>
            </div>
            <div class="small-container">
                <div class="categories">
                    <div class="row">
                        <div class="col-3">
                            <img
                                src="https://th.bing.com/th/id/R.60d692cdb9943ea1a3847ee101712ea5?rik=Ye%2brojsucML76w&riu=http%3a%2f%2fcdn9.dissolve.com%2fp%2fD430_49_353%2fD430_49_353_600.jpg&ehk=qw7i6UuegfPKb33w09Urc85ezxEOfK5Ei6yYN3M1nPc%3d&risl=&pid=ImgRaw&r=0">
                            <h3 class="doctors">Dr . mike</h3>
                            <h3>cordialogy</h3>
                            <a href="" class="btn ">Book Appointment Now &emsp;&emsp; &#10145; </a>
                        </div>
                        <div class="col-3">
                            <img
                                src="https://th.bing.com/th/id/R.4a153b991954299d4008c048e73cf9d0?rik=99SonzJy2KLA9A&riu=http%3a%2f%2fwww.medclient.com%2fwp-content%2fuploads%2f2011%2f05%2fafrican-american-female-doctor.jpg&ehk=FIzSTRFrbJ4fzZapFfnubQ06N6EuhRdHQPr1raEMGjE%3d&risl=&pid=ImgRaw&r=0">
                            <h3 class="doctors">Dr . jolaa</h3>
                            <h3 class="doctors">cordialogist</h3>
                            <a href="" class="btn ">Book Appointment Now &emsp;&emsp; &#10145; </a>

                        </div>
                        <div class="col-3">
                            <img
                                src="https://th.bing.com/th/id/OIP.bnP0lExasVPlrzNLRpK1XgHaLH?pid=ImgDet&w=853&h=1280&rs=1">
                            <h3 class="doctors">Dr .heven</h3>
                            <h3 class="doctors">Neurology</h3>
                            <a href="" class="btn ">Book Appointment Now &emsp;&emsp; &#10145; </a>
                        </div>
                    </div>
                </div>

            </div>


            <div class="footer">
                <div class="footlogor">
                    <img id="footlogo"
                        src="https://th.bing.com/th/id/R.757a4667381657627da1f010c9cf93aa?rik=aVlccAKrWaqptw&riu=http%3a%2f%2fmedvisit.com.ng%2fwp-content%2fuploads%2f2016%2f10%2fmax-hospital-logo.png&ehk=sPvASvpLhKAYs%2fnhDE9wBaGCZUcuBSbi%2bp5EqkBnRdE%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1">
                    <img id="footlogo"
                        src="https://worldsbesthospitals.net/wp-content/uploads/2016/11/10011994_759488497432129_2390141338645820715_o.jpg"
                        alt="">
                    <img id="footlogo" src="https://th.bing.com/th/id/OIP.JQXwbeS9nVh1vOOpRUTL_AHaG9?pid=ImgDet&rs=1"
                        alt="">
                    <img id="footlogo"
                        src="https://scalebranding.com/wp-content/uploads/2021/06/LOGO-CADUCEUS-STAR-1024x1024.jpg"
                        alt="">
                        <div class="enqury">

                            <h3>&#9742; call : +91 9205310346</h3>
                            <h3> Email : digitalquery@maxhealthcare.com</h3>
                        </div>
                </div>
             

                <div class="quiklinks">
                    <h2>Quick Links</h2>
                    <h3>Find Top Doctors</h3>
                    <h3>Get Free Estimates</h3>
                    <h3>About Max Hospital India</h3>
                    <h3>Blog</h3>
                    <h3>cost</h3>
                </div>
                <div class="topproc">
                    <h2> &#9400; all copy rights reserved</h2>
                </div>

            </div>

</body>
</html>