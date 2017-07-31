library(geofacet)
grid_london <- data.frame(
        code = c("E09000003", "E09000010", "E09000014", "E09000015", "E09000005", "E09000007", "E09000012", "E09000019", "E09000031", "E09000026", "E09000017", "E09000025", "E09000016", "E09000002", "E09000009", "E09000013", "E09000020", "E09000033", "E09000001", "E09000030", "E09000018", "E09000011", "E09000028", "E09000027", "E09000032", "E09000022", "E09000023", "E09000004", "E09000024", "E09000021", "E09000029", "E09000008", "E09000006"),
        name = abbreviate(c("Barnet", "Enfield", "Haringey", "Harrow", "Brent", "Camden", "Hackney", "Islington", "Waltham Forest", "Redbridge", "Hillingdon", "Newham", "Havering", "Barking and Dagenham", "Ealing", "Hammersmith and Fulham", "Kensington and Chelsea", "Westminster", "City of London", "Tower Hamlets", "Hounslow", "Greenwich", "Southwark", "Richmond upon Thames", "Wandsworth", "Lambeth", "Lewisham", "Bexley", "Merton", "Kingston upon Thames", "Sutton", "Croydon", "Bromley"),6),
        col = c(4, 6, 5, 2, 3, 4, 5, 6, 7, 8, 1, 8, 10, 9, 2, 3, 4, 5, 6, 7, 2, 8, 6, 3, 4, 5, 7, 9, 4, 3, 5, 6, 7),
        row = c(1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5),
        stringsAsFactors = FALSE
)

grid_no_london <- data.frame(
        code = c("E06000057", "E08000021", "E08000022", "E08000023", "E08000037", "E08000024", "E06000047", "E06000001", "E10000006", "E06000005", "E06000003", "E06000004", "E06000002", "E10000023", "E08000032", "E10000017", "E06000014", "E06000008", "E08000035", "E08000033", "E06000011", "E06000009", "E08000001", "E08000002", "E08000005", "E08000034", "E08000036", "E06000010", "E08000014", "E08000013", "E08000010", "E08000006", "E08000003", "E08000004", "E08000016", "E08000017", "E06000013", "E06000012", "E08000012", "E08000011", "E06000006", "E08000009", "E06000007", "E08000008", "E08000019", "E08000018", "E08000015", "E08000007", "E06000050", "E06000049", "E10000007", "E10000024", "E10000019", "E06000018", "E06000021", "E06000015", "E10000028", "E06000020", "E06000051", "E10000020", "E10000018", "E06000017", "E06000031", "E06000016", "E08000026", "E08000025", "E08000031", "E08000030", "E08000027", "E08000028", "E08000029", "E10000031", "E10000021", "E06000055", "E10000003", "E10000029", "E06000019", "E10000034", "E06000042", "E06000056", "E10000012", "E10000015", "E06000032", "E10000002", "E10000025", "E10000013", "E06000025", "E06000030", "E06000038", "E06000039", "E06000034", "E06000033", "E06000040", "E06000041", "E06000037", "E06000022", "E06000023", "E06000024", "E06000035", "E10000016", "E10000027", "E06000054", "E06000036", "E10000030", "E10000014", "E10000011", "E10000032", "E06000045", "E06000043", "E06000044", "E06000028", "E06000029", "E10000009", "E10000008", "E06000046", "E06000027", "E06000026", "E06000052", "E06000053", "E01234", "E012345", "E0123456"),
        name = abbreviate(c("Northumberland", "Newcastle upon Tyne", "North Tyneside", "South Tyneside", "Gateshead", "Sunderland", "County Durham", "Hartlepool", "Cumbria", "Darlington", "Redcar and Cleveland", "Stockton-on-Tees", "Middlesbrough", "North Yorkshire", "Bradford", "Lancashire", "York", "Blackburn with Darwen", "Leeds", "Calderdale", "East Riding of Yorkshire", "Blackpool", "Bolton", "Bury", "Rochdale", "Kirklees", "Wakefield", "Kingston upon Hull", "Sefton", "St. Helens", "Wigan", "Salford", "Manchester", "Oldham", "Barnsley", "Doncaster", "North Lincolnshire", "North East Lincolnshire", "Liverpool", "Knowsley", "Halton", "Trafford", "Warrington", "Tameside", "Sheffield", "Rotherham", "Wirral", "Stockport", "Cheshire West and Chester", "Cheshire East", "Derbyshire", "Nottinghamshire", "Lincolnshire", "Nottingham", "Stoke-on-Trent", "Derby", "Staffordshire", "Telford and Wrekin", "Shropshire", "Norfolk", "Leicestershire", "Rutland", "Peterborough", "Leicester", "Coventry", "Birmingham", "Wolverhampton", "Walsall", "Dudley", "Sandwell", "Solihull", "Warwickshire", "Northamptonshire", "Bedford", "Cambridgeshire", "Suffolk", "Herefordshire", "Worcestershire", "Milton Keynes", "Central Bedfordshire", "Essex", "Hertfordshire", "Luton", "Buckinghamshire", "Oxfordshire", "Gloucestershire", "South Gloucestershire", "Swindon", "Reading", "Slough", "Thurrock", "Southend-on-Sea", "Windsor and Maidenhead", "Wokingham", "West Berkshire", "Bath and North East Somerset", "Bristol", "North Somerset", "Medway", "Kent", "Somerset", "Wiltshire", "Bracknell Forest", "Surrey", "Hampshire", "East Sussex", "West Sussex", "Southampton", "Brighton and Hove", "Portsmouth", "Bournemouth", "Poole", "Dorset", "Devon", "Isle of Wight", "Torbay", "Plymouth", "Cornwall", "Isles of Scilly", ".", "..", "…"),6),
        col = c(12, 11, 12, 13, 12, 13, 11, 14, 9, 11, 14, 12, 13, 14, 12, 9, 15, 10, 13, 12, 16, 9, 10, 11, 12, 13, 14, 17, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 8, 9, 10, 11, 12, 13, 14, 15, 9, 12, 10, 11, 13, 16, 17, 15, 12, 13, 11, 10, 9, 20, 16, 17, 19, 15, 14, 13, 10, 11, 10, 11, 12, 13, 16, 17, 19, 21, 10, 11, 16, 18, 20, 18, 17, 16, 14, 10, 11, 13, 14, 15, 17, 18, 15, 14, 13, 11, 10, 9, 19, 18, 10, 12, 16, 17, 14, 19, 17, 14, 18, 15, 12, 11, 9, 7, 14, 7, 6, 5, 1, 2, 3, 4),
        row = c(1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 19, 20, 21, 21, 21, 22, 22, 22, 22),
        stringsAsFactors = FALSE
)

library(fingertipsR)
library(dplyr)
df <- fingertips_data(92488)
df <- rename(df, name = AreaName, code = AreaCode) %>%
        mutate(name = abbreviate(name,6))

Sys.setenv(http_proxy="http://158.119.150.18:8080")
Sys.setenv(https_proxy="http://158.119.150.18:8080")
shp_eng <- geojsonio::geojson_read("https://opendata.arcgis.com/datasets/37bcb9c9e788497ea4f80543fd14c0a7_4.geojson",
                                   what = "sp")
shp_eng <- shp_eng[shp_eng$ctry16nm == "England",] %>%
        broom::tidy()

shp_lond <- geojsonio::geojson_read("https://opendata.arcgis.com/datasets/f99b145881724e15a04a8a113544dfc5_4.geojson",
                                    what = "sp")
shp_lond <- shp_lond[shp_lond$rgn16nm == "London",] %>%
        broom::tidy()

cols <- data.frame(category = c("Better","Same","Worse","Not compared"),
                   r = c(146, 255, 192, 166),
                   g = c(208, 192, 0, 166),
                   b = c(80, 0, 0, 166)) %>%
        mutate(hex = rgb(r,g,b, maxColorValue = 255))
cols <- structure(cols$hex,
                  names = as.character(cols$category))
dfgraph_no_lond <- df %>%
        filter(code %in% grid_no_london$code &
                       AreaType == "County & UA" &
                       Sex == "Persons")
dfgraph_lond <- df %>%
        filter(code %in% grid_london$code &
                       AreaType == "County & UA" &
                       Sex == "Persons")
                       
library(ggplot2)
# No london
pnolond <- ggplot(dfgraph_no_lond, aes(x = Timeperiod, y = Value, group = name)) +
        geom_line() +
        geom_point(aes(colour = ComparedtoEnglandvalueorpercentiles),
                   size = 0.75) +
        scale_colour_manual(name = "Compared to England",
                          values=cols,
                          breaks = names(cols)) +
        facet_geo(~ name, grid = grid_no_london) +
        theme_void() +
        theme(legend.position = "bottom",
              panel.background = element_rect(fill = "transparent"),
              plot.background = element_rect(fill = "transparent")) +
        labs(title = unique(dfgraph_no_lond$IndicatorName))
class(pnolond) <- c("gg","ggplot")

bgeng <- ggplot(shp_eng) + 
        geom_polygon(aes(x = long, y = lat, group = group), 
                     fill = NA, colour = "gray80") + 
        coord_map() + 
        theme_void() + 
        theme(panel.background = element_rect(fill = "white"))
        
# Lond
plond <- ggplot(dfgraph_lond, aes(x = Timeperiod, y = Value, group = name)) +
        geom_line() +
        geom_point(aes(colour = ComparedtoEnglandvalueorpercentiles),
                   size = 0.5) +
        scale_colour_manual(name = "Compared to England",
                            values=cols,
                            breaks = names(cols)) +
        facet_geo(~ name, grid = grid_london) +
        theme_void() +
        theme(legend.position = "none",
              strip.text = element_text(size = rel(0.55))) +
        labs(title = "London")
class(plond) <- c("gg","ggplot")

bglond <- ggplot(shp_lond) + 
        geom_polygon(aes(x = long, y = lat, group = group), 
                     fill = NA, colour = "gray80") + 
        coord_map() + 
        theme_void() + 
        theme(panel.background = element_rect(fill = "white"))

filename = paste0(getwd(),
                  "/pngs/",
                  gsub("[^[:alnum:] ]","",Sys.time()),
                  unique(dfgraph_lond$IndicatorName),
                  ".png")

vplond <- grid::viewport(width = unit(0.35, "npc"), 
                height = unit(0.14, "npc"), 
                x = unit(0.15, "npc"), 
                y = unit(0.4, "npc")) #this allows ability to create map inset
vplonddata <- grid::viewport(width = unit(0.29, "npc"), 
                         height = unit(0.11, "npc"), 
                         x = unit(0.15, "npc"), 
                         y = unit(0.42, "npc"))

vpmain <- grid::viewport(width = unit(0.9, "npc"), 
                         height = unit(0.75, "npc"))
png(filename,width = 33, height = 50, units = "cm",res=400, bg = "transparent") 
print(bgeng)
print(pnolond, 
      vp = vpmain)

print(bglond, vp = vplond)
print(plond, 
      vp = vplonddata)
dev.off() 

### BY SEX

dfgraph_no_lond <- df %>%
        filter(code %in% grid_no_london$code &
                       AreaType == "County & UA" &
                       Sex != "Persons" &
                       TimeperiodSortable == max(TimeperiodSortable))
dfgraph_lond <- df %>%
        filter(code %in% grid_london$code &
                       AreaType == "County & UA" &
                       Sex != "Persons" &
                       TimeperiodSortable == max(TimeperiodSortable))

sexcols <- data.frame(category = c("Male","Female"),
                   r = c(0, 130),
                   g = c(176, 36),
                   b = c(146, 51)) %>%
        mutate(hex = rgb(r,g,b, maxColorValue = 255))
sexcols <- structure(sexcols$hex,
                  names = as.character(sexcols$category))
# No london
pnolond <- ggplot(dfgraph_no_lond, aes(x = Sex, y = Value, fill = Sex)) +
        geom_col(position = position_dodge()) +
        coord_flip() + 
        scale_fill_manual(name = "",
                            values=sexcols,
                            breaks = names(sexcols)) +
        facet_geo(~ name, grid = grid_no_london) +
        theme_void() +
        theme(legend.position = "bottom",
              panel.background = element_rect(fill = "transparent"),
              plot.background = element_rect(fill = "transparent")) +
        labs(title = unique(dfgraph_no_lond$IndicatorName))
class(pnolond) <- c("gg","ggplot")


# Lond
plond <- ggplot(dfgraph_lond, aes(x = Sex, y = Value, fill = Sex)) +
        geom_col(position = position_dodge()) +
        coord_flip() + 
        scale_fill_manual(name = "",
                            values=sexcols,
                            breaks = names(sexcols)) +
        facet_geo(~ name, grid = grid_london) +
        theme_void() +
        theme(legend.position = "none",
              strip.text = element_text(size = rel(0.55))) +
        labs(title = "London")
class(plond) <- c("gg","ggplot")


filename = paste0(getwd(),
                  "/pngs/",
                  gsub("[^[:alnum:] ]","",Sys.time()),
                  unique(dfgraph_lond$IndicatorName),
                  "-by sex.png")

png(filename,width = 33, height = 50, units = "cm",res=400, bg = "transparent") 
print(bgeng)
print(pnolond, 
      vp = vpmain)

print(bglond, vp = vplond)
print(plond, 
      vp = vplonddata)
dev.off() 