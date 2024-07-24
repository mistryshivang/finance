<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <?php include('csslink.php'); ?>
    <?Php include('jslink.php'); ?>
    <link rel="stylesheet" href="./css/news.css">
</head>
<body>
    <?php
        $url='https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=619c6adc7f14425da468d8c6b4925559';
        $response = file_get_contents($url);
        $newsdata = json_decode($response);
    ?>
    <div class="jumbotron">
        <h1>google news api  | php</h1>
    </div>
    <div class="container">
        <?php
            foreach($newsdata->articales as $news)
            {
        ?>
        <div class="row">
                <div class="col-md-3">
                    <img src="<?php $news->urlToImage ?>" alt="news thubnail">
                </div>
                <div class="col-md-9">
                    <h2>title: <?php echo $news->title ?></h2>
                    <h5>description: <?php echo $news->description ?></h5>
                    <p>content: <?php echo $news->content ?></p>
                    <h6>Aurther: <?php echo $news->aurther ?></h6>
                    <h6>Published <?php echo $news->PublishedAt ?></h6>
                </div>
        </div>
        <?php
            }
        ?>
    </div>
    <Script>
        var url = 'https://newsapi.org/v2/everything?' +
          'q=Apple&' +
          'from=2023-03-05&' +
          'sortBy=popularity&' +
          'apiKey=619c6adc7f14425da468d8c6b4925559';

var req = new Request(url);

fetch(req)
    .then(function(response) {
        console.log(response.json());
    })
    </Script>
</body>
</html>