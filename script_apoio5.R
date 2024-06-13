# Criando data.frame com join
data_colig <- read_rds("dados/bancadas.rds") %>%
  left_join(read_excel("dados/coligacoes.xlsx"))


data_colig %>% # dados
  ggplot() + # chamando a função ggplot
  #chamar geometria com estetica dentro
  geom_bar(aes(x=size,y=party,fill=president),
           stat = "identity")


(g.colig <-
    data_colig %>%
    ggplot() +
    geom_bar(aes(x=size,y=party,fill=president),stat = "identity")
)

g.colig

g.colig +
  scale_color_brewer("Set3") +
  theme_minimal()
