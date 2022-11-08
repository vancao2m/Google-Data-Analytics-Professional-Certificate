glimpse(ToothGrowth)
penguins %>% 
  drop_na() %>% 
  group_by(species)

max_gentoo <- 
  penguins %>% 
  group_by("flipper_length_mm") %>%
  filter(species == "Gentoo")
View(max_gentoo)

# GETTING STARTED WITH GGPLOT2:
library(ggplot2)
library(palmerpenguins)
# point plot demonstrates the relation between flipper_length and body_mass 
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))

# point plot demonstrates the relationship between bill_length and bill_depth
ggplot(data = penguins)+
  geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm))

# add color to the point for each species 
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species))
# add shape to the point for each species, noted shape not shapes 
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, shape=species))
#add color and shape for points
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, 
                         shape=species, color=species))
# add shape, color and size 
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, 
                         shape=species, color=species, size=species))
# plot with alpha aesthetic:
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, alpha=species))

# 2 ways to color the whole plot without specified any species
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color="purple"))
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g), color="purple")

# bar plotting: geom_smooth
# loess: geom_smooth()` using method = 'loess' and formula 'y ~ x'
ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data=penguins)+
  +     geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g))+
  +     geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g), color="blue")
ggplot(data=diamonds)+ geom_bar(mapping=aes(x=cut))
ggplot(data=diamonds)+ geom_bar(mapping=aes(x=cut, fill=cut))
ggplot(data=diamonds)+ geom_bar(mapping=aes(x=cut, fill=clarity))
ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) + 
  geom_point(color="blue") +        
  geom_smooth(method="gam")

View(diamonds)
ggplot(data=penguins)+
  geom_bar(mapping=aes(x=flipper_length_mm, y=body_mass_g))+facet_wrap(~species)
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))+facet_wrap(~species)
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g),color=species)+facet_wrap(~species)
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,color=species))+facet_wrap(~species)
ggplot(data=diamonds)+ geom_bar(mapping=aes(x=cut, fill=cut))+facet_wrap(~cut)
> ggplot(data=diamonds)+ geom_bar(mapping=aes(x=color, fill=cut))+facet_wrap(~cut)
> ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,color=species))+facet_grid(sex~species)