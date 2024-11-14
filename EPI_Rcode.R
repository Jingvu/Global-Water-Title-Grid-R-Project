library(ggplot2)
library(worldtilegrid)
library(hrbrthemes)
library(systemfonts)
library(hrbrthemes)
library(scales)
library(tidyverse)

setwd("C:/Users/Admin/Downloads")

epi<- read.csv("wtg.csv")
epi$Rank <- as.numeric(epi$Rank)
epi$EPI <- as.numeric(epi$EPI)
epi$CDC.Safety.Advice.on.Tap.Water <- factor(epi$CDC.Safety.Advice.on.Tap.Water,
                                             levels = c("Not safe to drink","Safe to drink"),
                                             labels = c("Not safe to drink","Safe to drink"))

epi_vis <- ggplot(epi, aes(country = alpha.3, fill = EPI)) +
  geom_wtg(border_size = 0.3, border_col = I("white")) + # Add tiles and white borders between them
  geom_text(
    aes(
      label = paste0(alpha.2, "\n", ifelse(is.na(EPI), "NA", round(EPI, 1))),  # Country code and EPI score in two lines
      colour = I("black")  # Add titles' colour
    ), 
    stat = "wtg", size = 1.8, fontface = "bold"
  ) + 
  # Overlaying shapes
  geom_point(
    aes(shape = CDC.Safety.Advice.on.Tap.Water),
    size = 2,  # Size of the shapes
    fill = NA,  # Fill colour
    color = "black",  # Border color
    stat = "wtg",  # Keep the shapes aligned with country tiles
    nudge_y = -1,  # Y-position
    alpha = 0.5 # Transparency
  ) +
  
  # Shape mapping for binary value
  scale_shape_manual(
    values = c("Safe to drink" = 21, "Not safe to drink" = 24), # Circle for safe & triangle for unsafe
    name = "Tap Water Safety",
    na.translate = FALSE  # Remove NA from legend
  ) +
  
  # Coordinates
  coord_equal(xlim = c(1.5, 27.5), ylim = c(-23, -1.5))  + # Limits of the plot
  
  # Defines color gradient
  scale_fill_gradientn(
    colours = c("darkorange", "dodgerblue1"),  # Multicolor gradient
    breaks = seq(0, 100, by = 10),  # Breaks at each 10-point
    values = scales::rescale(seq(0, 100, by = 10)),  # Scale
    name = "EPI Score",  # Legend title
    na.value = "grey"  # Color for missing values
  ) +
  
  # Customizes legend
  guides(
    fill = guide_colourbar(
      title.position = "left", # Position of the title of the color bar
      title.vjust = 0.9, # Adjusts the vertical scaling of the title
      barwidth = 15,   # Width of the color bar
      barheight = 0.5, # Height of the color bar
      label = TRUE,  # Display the label
      na.value = "grey", # Color for "No Data"
      order = 1), #  Legends displayed order
    
    shape = guide_legend( # Legend for the binary value
      title = "Tap Water Safety", 
      order = 2) #  Legends displayed order
  ) +
  
  # Adds title
  labs(
    title = "The Quality of Drinking Water",
    fill = "EPI Score"
  )  +
  
  # Themes
  hrbrthemes::theme_ipsum_rc() +
  theme_enhance_wtg() +
  theme(
    legend.position = "bottom", # Position of legend
    legend.box = "vertical",  # Arrange the legends vertically
    legend.spacing.y = unit(0, 'cm'),  # Spacing between legends
    legend.text = element_text(size = 6),  # Size of legend text
    legend.title = element_text(size = 6, face = "bold"),  # Size of legend titles
    legend.title.align = 0.1,  # Align legend titles 
    legend.text.align = 0.5,   # Align legend text 
    legend.key.width = unit(1, "lines"), # Width of the legend key
    legend.key.height = unit(0, "cm"), # Height of the legend key
    plot.title = element_text(size = 15, face = "bold"),  # Title font size
    panel.grid.major = element_blank(), # Removes gridlines
    panel.grid.minor = element_blank(), # Removes gridlines
    panel.background = element_blank(), # Removes background
    panel.border = element_blank() # Removes border
  ) +
  
  # Adds annotations for "No Data"
  annotate("rect", xmin = 0.5, xmax = 1.2, ymin = -24, ymax = -23.3, fill = "grey", color = "white") + # Rectangle
  annotate("text", x = 2.5, y = -23.6, label = "No Data", hjust = 0.5, size = 2.5) # Text
