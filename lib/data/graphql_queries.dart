String getNewsQuery = """
    query { 
      allArticles {
        id, 
        title, 
        image{url}, 
        hosted, 
        publisher{name},
        categories{name}
        publicationDate,
        sourceUrl
      }
    }
  """;
