    $.ajax({
        async: true, 

        url: "https://api.themoviedb.org/3/discover/movie?api_key=afb1dcfbf52dedf12c2a78edaec38830&language=ko&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate" ,

        type: "GET",
        timeout: 3000,
        dataType: "json", 
        success: function (result) { 

            let html = "<div class='row row-cols-1 row-cols-sm-2 row-cols-md-5' id='carousel01'>";
            for (let i = 0; i<5; i++) {  

                let poster = 'https://image.tmdb.org/t/p/w500/';
                let img = poster + result.results[i].poster_path;

                let orig_title = result.results[i].original_title;
                let title = result.results[i].title;
                let date = result.results[i].release_date.replace(/-/gi, "").slice(0,-4);
                let vote_average = result.results[i].vote_average

                html += "<div class='col' >";
                html += "<div class='card' id='card_film'>";
                html += "<img src='" + img + "' id='img_film'>";
                html += "<div class='card-body'>";
                html += "<div id='card-text1'>"+ title +"</div>";
                html += "<div id='card-text2'>"+ date +"</div>";
                html += "<div id='card-text3'> 평점 : "+ vote_average +"</div>";
                html += "</div></div></div><br>";
            };
            $("#carousel1").append(html);

            console.log(result.results);

            let html2 = "<div class='row row-cols-1 row-cols-sm-2 row-cols-md-5' id='carousel01'>";
            for (let i = 5; i<10; i++) {  

                let poster = 'https://image.tmdb.org/t/p/w500/';
                let img = poster + result.results[i].poster_path;

                let orig_title = result.results[i].original_title;
                let title = result.results[i].title;
                let date = result.results[i].release_date.replace(/-/gi, "").slice(0,-4);
                let vote_average = result.results[i].vote_average

                html2 += "<div class='col' >";
                html2 += "<div class='card' id='card_film'>";
                html2 += "<img src='" + img + "' id='img_film'>";
                html2 += "<div class='card-body'>";
                html2 += "<div id='card-text1'>"+ title +"</div>";
                html2 += "<div id='card-text2'>"+ date +"</div>";
                html2 += "<div id='card-text3'> 평점 : "+ vote_average +"</div>";
                html2 += "</div></div></div><br>";
            }
            $("#carousel2").append(html2);
        },
        error: function (error) {
            alert("서버호출 실패")
        }
    })

    $.ajax({
        async: true, 

        url: "https://api.themoviedb.org/3/tv/popular?api_key=afb1dcfbf52dedf12c2a78edaec38830&language=ko&page=1" ,

        type: "GET",
        timeout: 3000,
        dataType: "json", 
        success: function (result) { 

            let html = "<div class='row row-cols-1 row-cols-sm-2 row-cols-md-5' id='carousel01'>";
            for (let i = 0; i<5; i++) {  

                let poster = 'https://image.tmdb.org/t/p/w500/';
                let img = poster + result.results[i].poster_path;

                let name = result.results[i].name;
                let date = result.results[i].first_air_date.replace(/-/gi, "").slice(0,-4);
                let vote_average = result.results[i].vote_average

                html += "<div class='col' >";
                html += "<div class='card' id='card_film'>";
                html += "<img src='" + img + "' id='img_film'>";
                html += "<div class='card-body'>";
                html += "<div id='card-text1'>"+ name +"</div>";
                html += "<div id='card-text2'>"+ date +"</div>";
                html += "<div id='card-text3'> 평점 : "+ vote_average +"</div>";
                html += "</div></div></div><br>";
            };
            $("#carousel3").append(html);

            console.log(result.results);

            let html2 = "<div class='row row-cols-1 row-cols-sm-2 row-cols-md-5' id='carousel01'>";
            for (let i = 5; i<10; i++) {  

                let poster = 'https://image.tmdb.org/t/p/w500/';
                let img = poster + result.results[i].poster_path;

                let name = result.results[i].name;
                let date = result.results[i].first_air_date.replace(/-/gi, "").slice(0,-4);
                let vote_average = result.results[i].vote_average

                html2 += "<div class='col' >";
                html2 += "<div class='card' id='card_film'>";
                html2 += "<img src='" + img + "' id='img_film'>";
                html2 += "<div class='card-body'>";
                html2 += "<div id='card-text1'>"+ name +"</div>";
                html2 += "<div id='card-text2'>"+ date +"</div>";
                html2 += "<div id='card-text3'> 평점 : "+ vote_average +"</div>";
                html2 += "</div></div></div><br>";
            }
            $("#carousel4").append(html2);
        },
        error: function (error) {
            alert("서버호출 실패")
        }
    })

    $.ajax({
        async: true, 

        url: "https://api.themoviedb.org/3/movie/top_rated?api_key=afb1dcfbf52dedf12c2a78edaec38830&language=ko&page=1" ,

        type: "GET",
        timeout: 3000,
        dataType: "json", 
        success: function (result) { 

            let html = "<div class='row row-cols-1 row-cols-sm-2 row-cols-md-5' id='carousel01'>";
            for (let i = 0; i<5; i++) {  

                let poster = 'https://image.tmdb.org/t/p/w500/';
                let img = poster + result.results[i].poster_path;

                let orig_title = result.results[i].original_title;
                let title = result.results[i].title;
                let date = result.results[i].release_date.replace(/-/gi, "").slice(0,-4);
                let vote_average = result.results[i].vote_average

                html += "<div class='col' >";
                html += "<div class='card' id='card_film'>";
                html += "<img src='" + img + "' id='img_film'>";
                html += "<div class='card-body'>";
                html += "<div id='card-text1'>"+ title +"</div>";
                html += "<div id='card-text2'>"+ date +"</div>";
                html += "<div id='card-text3'> 평점 : "+ vote_average +"</div>";
                html += "</div></div></div><br>";
            };
            $("#carousel5").append(html);

            console.log(result.results);

            let html2 = "<div class='row row-cols-1 row-cols-sm-2 row-cols-md-5' id='carousel01'>";
            for (let i = 5; i<10; i++) {  

                let poster = 'https://image.tmdb.org/t/p/w500/';
                let img = poster + result.results[i].poster_path;

                let orig_title = result.results[i].original_title;
                let title = result.results[i].title;
                let date = result.results[i].release_date.replace(/-/gi, "").slice(0,-4);
                let vote_average = result.results[i].vote_average

                html2 += "<div class='col' >";
                html2 += "<div class='card' id='card_film'>";
                html2 += "<img src='" + img + "' id='img_film'>";
                html2 += "<div class='card-body'>";
                html2 += "<div id='card-text1'>"+ title +"</div>";
                html2 += "<div id='card-text2'>"+ date +"</div>";
                html2 += "<div id='card-text3'> 평점 : "+ vote_average +"</div>";
                html2 += "</div></div></div><br>";
            }
            $("#carousel6").append(html2);
        },
        error: function (error) {
            alert("서버호출 실패")
        }
    })
