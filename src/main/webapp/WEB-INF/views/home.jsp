
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="/WEB-INF/views/templates/header.jsp"%>

<!--Carousel CSS -->
<link href="<c:url value="/resources/css/carousel.css"/>" rel="stylesheet">
<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image" src="<c:url value="/resources/images/back2.jpg"/>" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Welcome to Free$oul Muzik Store</h1>
                    <p> Your ultimate destination for the Soulful Music </p>
                    <p style="color:lightgrey;font-style:oblique;">Our Music Store is loaded with Amazing Instruments, Records, Accessories and much more. Hurry! Order Now!</p>
                    <%--<p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>--%>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image" src="<c:url value="/resources/images/back8.jpg"/>" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1> Musical Facts! </h1>
                    <p style="color:black;font-style:oblique;">One good thing about Music, when it hits you, you feel no Pain. -Bob Marley</p>
                    <%--<p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>--%>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image" src="<c:url value="/resources/images/back9.jpg"/>" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Lead and they shall Follow!</h1>
                    <p style="color:yellow;font-style:oblique;"> Music in the Soul can be heard by the Universe.It has it's own harmony in the Tunes. </p>
                    <%--<p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>--%>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>Heading</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>Heading</h2>
            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>Heading</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->

    <%@include file="/WEB-INF/views/templates/footer.jsp"%>
