<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <h1>IP Information</h1>
                    <div class="card-body">
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
                <div class="card ">
                    <h1>Google Public DNS</h1>
                    <div class="card-body">
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
                        <img src="${countryImage}"/>
                    </div>
                </div>
            </div>
        </div>


    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
