<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<style>
    @import url('https://fonts.googleapis.com/css2?family=League+Gothic&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Fredoka:wght@600&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,300&display=swap');
    body{
        background-color: #fff;
    }
    h1{
        font-family: 'League Gothic', sans-serif;
        text-align: center;
        font-size: 5rem;
        text-transform: uppercase;
    }
    h2{
        font-family: 'Fredoka', sans-serif;
        text-align: center;
        text-transform: uppercase;
    }
    img{
        margin: 0px auto 30px;
        display: block;
    }
    p{
        font-family: 'Fredoka', sans-serif;
    }
    p span{
        font-family: 'Roboto', sans-serif;
        margin-left: 10px;
    }
</style>

<body>

    <div class="container">
        <div class="row">
            <h1>Information</h1>

            <div class="col-md-6">
                <div class="card">
                    <h2>IP Information</h2>
                    <div class="card-body">
                        <img src="${countryImage}"/>
                        <p>Your IP address is: <span>${ip}</span> </p>
                        <p>Your City is: <span>${city}</span> </p>
                        <p>Your Region is: <span>${region}</span> </p>
                        <p>Your Country is: <span>${country}</span> </p>
                        <p>Your Location is: <span>${loc}</span> </p>
                        <p>Your Organization is: <span>${org}</span> </p>
                        <p>Google Map Link: <span>${mapLink}</span> </p>
                        <p>Your Timezone is: <span>${timezone}</span> </p>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <h2>Google Public DNS</h2>
                    <div class="card-body">
                        <img src="${dnsCountryImage}"/>
                        <p>IP: <span>${dnsIp}</span> </p>
                        <p>Hostname is: <span>${dnsHostName}</span> </p>
                        <p>AnyCast is: <span>${dnsAnyCast}</span> </p>
                        <p>City is: <span>${dnsCity}</span> </p>
                        <p>Region is: <span>${dnsRegion}</span> </p>
                        <p>Country is: <span>${dnsCountry}</span> </p>
                        <p>Location is: <span>${dnsLoc}</span> </p>
                        <p>Organization is: <span>${dnsOrg}</span> </p>
                        <p>Postal is: <span>${dnsPostal}</span> </p>
                        <p>Google Map Link: <span>${dnsMapLink}</span> </p>
                        <p>Timezone is: <span>${dnsTimezone}</span> </p>
                    </div>
                </div>
            </div>
        </div>


    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
