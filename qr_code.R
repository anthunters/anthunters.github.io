library(qrcode)
library(here)

# Generate QR code
qr <- qr_code("https://anthunters.github.io/")

# Save as PNG (ensure a filename is provided)
png(here("qr_code.png"), width = 400, height = 400)

# Plot QR code
par(mar = c(0, 0, 0, 0))  # No margins
plot(qr, col = c("white", "black"), asp = 1, axes = FALSE, xlab = "", ylab = "")

# Close the PNG device
dev.off()