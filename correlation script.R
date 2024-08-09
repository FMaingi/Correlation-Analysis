#For T. absoluta#

Cor <- read_excel("correlation1.xlsx")
cc<-cor(Cor)
cc
corrplot(cc, type="upper", order= 'AOE', 
         col=brewer.pal(n=8, name="RdBu"))
corrplot(cc, type="upper", order= 'hclust',
         col=brewer.pal(n=8, name="RdBu"))


testRes = cor.mtest(Cor, conf.level = 0.95)
corrplot(cc, p.mat = testRes$p, diag = FALSE, type = 'upper', sig.level = c(0.001, 0.01, 0.05), pch.cex = 0.9, insig = 'label_sig', order = 'AOE')

corrplot(cc, p.mat = testRes$p, method = 'color', diag = FALSE, type = 'upper',
         sig.level = c(0.001, 0.01, 0.05), pch.cex = 0.9,
         insig = 'label_sig', pch.col = 'black', order = 'AOE',col=brewer.pal(n=8, name="RdBu") )$corrPos -> p1 
text(p1$x, p1$y, round(p1$corr, 2))


Cor <- read_excel("C:/Users/rgwokyalya/OneDrive - International Centre of Insect Physiology and Ecology (ICIPE)/Paper one/Correlation1.xlsx")
cc<-cor(Cor)
cc
corrplot(cc, type="upper", order="hclust", 
         col=brewer.pal(n=8, name="RdBu"))
testRes = cor.mtest(Cor, conf.level = 0.95)
corrplot(cc, p.mat = testRes$p, method = 'color', diag = FALSE, type = 'upper',
         sig.level = c(0.001, 0.01, 0.05), pch.cex = 0.9,
         insig = 'label_sig', pch.col = 'black', order = 'AOE',col=brewer.pal(n=8, name="RdBu") )

corrplot(cc, p.mat = testRes$p, method = 'color', diag = FALSE, type = 'upper',
         sig.level = c(0.001, 0.01, 0.05), pch.cex = 0.9,
         insig = 'label_sig', pch.col = 'black', order = 'AOE',col=brewer.pal(n=8, name="RdBu") )$corrPos -> p1
text(p1$x, p1$y, round(p1$corr, 2))