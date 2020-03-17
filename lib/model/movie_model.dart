class Movies {
    final String title;
    final String year;
    final String imdbId;
    final String type;
    final String poster;

    Movies({
        this.title,
        this.year,
        this.imdbId,
        this.type,
        this.poster,
    });

    factory Movies.fromJson(Map<String, dynamic> json) => Movies(
        title: json["Title"],
        year: json["Year"],
        imdbId: json["imdbID"],
        type: json["Type"],
        poster: json["Poster"],
    );

    Map<String, dynamic> toJson() => {
        "Title": title,
        "Year": year,
        "imdbID": imdbId,
        "Type": type,
        "Poster": poster,
    };
}