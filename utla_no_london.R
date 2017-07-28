library(geofacet)
# mygrid <- data.frame(
#         code = c("E06000057", "E08000022"),
#         name = c("Northumberland", "North Tyneside"),
#         col = c(1, 25),
#         row = c(1, 25),
#         stringsAsFactors = FALSE
# )
mygrid <- data.frame(
        code = c("E06000057", "E08000021", "E08000022", "E08000023", "E08000037", "E08000024", "E10000006", "E06000047", "E06000005", "E06000001", "E06000003", "E06000004", "E06000002", "E10000023", "E10000017", "E08000032", "E06000014", "E06000011", "E06000008", "E08000035", "E06000009", "E08000001", "E08000002", "E08000005", "E08000033", "E08000034", "E08000036", "E06000010", "E08000014", "E08000013", "E08000010", "E08000006", "E08000003", "E08000004", "E08000016", "E08000017", "E06000013", "E06000012", "E08000012", "E08000015", "E08000011", "E06000006", "E08000009", "E06000007", "E08000008", "E08000007", "E08000019", "E08000018", "E06000050", "E06000049", "E06000021", "E10000007", "E10000024", "E10000019", "E10000028", "E06000015", "E06000018", "E06000051", "E06000020", "E08000030", "E10000018", "E06000017", "E06000031", "E10000020", "E06000016", "E08000031", "E08000028", "E08000025", "E08000026", "E08000027", "E10000034", "E08000029", "E10000031", "E10000021", "E06000055", "E10000003", "E10000029", "E06000019", "E06000042", "E06000056", "E10000013", "E10000025", "E10000002", "E06000032", "E10000015", "E10000012", "E06000025", "E06000030", "E06000038", "E06000039", "E06000034", "E06000033", "E06000024", "E06000023", "E06000022", "E06000037", "E06000041", "E06000040", "E06000035", "E06000036", "E10000027", "E06000054", "E10000030", "E10000016", "E10000014", "E06000045", "E10000032", "E10000011", "E10000008", "E10000009", "E06000029", "E06000028", "E06000046", "E06000044", "E06000043", "E06000027", "E06000052", "E06000026", "E06000053"),
        name = c("Northumberland", "Newcastle upon Tyne", "North Tyneside", "South Tyneside", "Gateshead", "Sunderland", "Cumbria", "County Durham", "Darlington", "Hartlepool", "Redcar and Cleveland", "Stockton-on-Tees", "Middlesbrough", "North Yorkshire", "Lancashire", "Bradford", "York", "East Riding of Yorkshire", "Blackburn with Darwen", "Leeds", "Blackpool", "Bolton", "Bury", "Rochdale", "Calderdale", "Kirklees", "Wakefield", "Kingston upon Hull,  City of", "Sefton", "St. Helens", "Wigan", "Salford", "Manchester", "Oldham", "Barnsley", "Doncaster", "North Lincolnshire", "North East Lincolnshire", "Liverpool", "Wirral", "Knowsley", "Halton", "Trafford", "Warrington", "Tameside", "Stockport", "Sheffield", "Rotherham", "Cheshire West and Chester", "Cheshire East", "Stoke-on-Trent", "Derbyshire", "Nottinghamshire", "Lincolnshire", "Staffordshire", "Derby", "Nottingham", "Shropshire", "Telford and Wrekin", "Walsall", "Leicestershire", "Rutland", "Peterborough", "Norfolk", "Leicester", "Wolverhampton", "Sandwell", "Birmingham", "Coventry", "Dudley", "Worcestershire", "Solihull", "Warwickshire", "Northamptonshire", "Bedford", "Cambridgeshire", "Suffolk", "Herefordshire, County of", "Milton Keynes", "Central Bedfordshire", "Gloucestershire", "Oxfordshire", "Buckinghamshire", "Luton", "Hertfordshire", "Essex", "South Gloucestershire", "Swindon", "Reading", "Slough", "Thurrock", "Southend-on-Sea", "North Somerset", "Bristol, City of", "Bath and North East Somerset", "West Berkshire", "Wokingham", "Windsor and Maidenhead", "Medway", "Bracknell Forest", "Somerset", "Wiltshire", "Surrey", "Kent", "Hampshire", "Southampton", "West Sussex", "East Sussex", "Devon", "Dorset", "Poole", "Bournemouth", "Isle of Wight", "Portsmouth", "Brighton and Hove", "Torbay", "Cornwall", "Plymouth", "Isles of Scilly"),
        col = c(9, 9, 11, 13, 11, 12, 7, 9, 10, 12, 14, 12, 13, 12, 7, 10, 13, 15, 8, 12, 6, 7, 8, 9, 10, 11, 12, 15, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13, 6, 7, 9, 11, 13, 16, 10, 11, 13, 7, 8, 10, 13, 14, 16, 20, 13, 8, 10, 11, 12, 8, 9, 10, 11, 14, 15, 17, 20, 7, 14, 16, 9, 12, 14, 15, 16, 18, 8, 11, 13, 15, 18, 19, 6, 7, 8, 11, 13, 14, 19, 14, 7, 10, 15, 19, 12, 12, 15, 17, 4, 7, 9, 10, 12, 13, 16, 4, 2, 3, 1),
        row = c(1, 2, 2, 2, 3, 3, 4, 4, 4, 4, 4, 5, 5, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 16, 16, 16, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 20, 20, 20, 20, 20, 20, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 23, 24, 24, 25),
        stringsAsFactors = FALSE
)
#geofacet::grid_preview(mygrid)


library(fingertipsR)
library(dplyr)
df <- fingertips_data(92196)
df <- rename(df, name = AreaName, code = AreaCode)
dfgraph <- df %>%
        filter(code %in% mygrid$code &
                       AreaType == "County & UA")
                       
cols <- data.frame(category = c("Better","Same","Worse","Not compared"),
                   r = c(146, 255, 192, 166),
                   g = c(208, 192, 0, 166),
                   b = c(80, 0, 0, 166)) %>%
        mutate(hex = rgb(r,g,b, maxColorValue = 255))
cols <- structure(cols$hex,
                  names = as.character(cols$category))
library(ggplot2)
p <- ggplot(dfgraph, aes(x = Timeperiod, y = Value, group = name)) +
        # geom_bar(stat = "identity", aes(fill = ComparedtoEnglandvalueorpercentiles)) +
        geom_line() +
        geom_point(aes(colour = ComparedtoEnglandvalueorpercentiles)) +
        scale_colour_manual(name = "",
                          values=cols,
                          breaks = names(cols)) +
        facet_geo(~ name, grid = mygrid) +
        #ggthemes::theme_tufte() +
        theme_void() +
        theme(legend.position = "none") +
        labs(title = "Infant mortality rates")

filename = paste0(getwd(),
                  "/pngs/",
                  gsub("[^[:alnum:] ]","",Sys.time()),
                  ".png")
ggsave(filename, 
       plot = p, 
       width = 33, 
       height = 50, 
       units = "cm",
       dpi = 300)
