<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <style>
    #about-section {

        position: relative;
    }

    .blockabout {
        padding: 20px;
        background: white;
    }

    .blockabout-inner {
        padding: 30px;
        border: 1px solid rgba(32, 33, 36, 0.1);
    }

    .sosmed-horizontal a i {
        border: 1px solid #070707;
        border-radius: 50%;
        color: #070707;
        display: inline-block;
        height: 30px;
        width: 30px;
        line-height: 30px;
        margin: auto 3px;
        font-size: 15px;
        text-align: center;
        transition: all 0.3s;
    }

    .rey-btn {
        border: 2px solid #070707;
        padding: 10px 40px;
        text-transform: uppercase;
        letter-spacing: 2px;
        font-size: 13px;
        font-weight: 700;
        border-radius: 50px;
        transition: all 0.3s;
    }
    </style>
</head>

<body>
<div class="container">

    <section id="about-section" class="pt-5 pb-5">
        <div class="container wrapabout">
            <div class="red"></div>

            <div class="row">
                <div class="col-lg-6 align-items-center justify-content-left d-flex mb-5 mb-lg-0">
                    <div class="blockabout">
                        <div class="blockabout-inner text-center text-sm-start">
                            <div class="title-big pb-3 mb-3">
                                <h3>ABOUT AS</h3>
                            </div>

                            <p class="description-p text-muted pe-0 pe-lg-0">
                                trouvez la bonne affaire sur le site référent de petites annonces de particulier à particulier et de professionnels. Avec des millions de petites annonces, trouvez la bonne …
                            </p>

                            <p class="description-p text-muted pe-0 pe-lg-0">Avec des millions de petites annonces, trouvez la bonne …</p>

                            <div class="sosmed-horizontal pt-3 pb-3">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                            <a href="#" class="btn rey-btn mt-3">See More</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 mt-5 mt-lg-0">
                    <figure class="potoaboutwrap">
                        <asset:image src="LECOINCOIN.png" absolute=""></asset:image>
                    </figure>
                </div>
            </div>
        </div>
    </section>
</div>
</body>
</html>
