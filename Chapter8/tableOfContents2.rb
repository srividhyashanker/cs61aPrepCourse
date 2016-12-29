

line_width = 50

puts('Table of Contents'.center( line_width + 3))
tableOfContents = ['Chapter 1: Getting Started','page 1', 'Chapter 2: Numbers', 'page 9', 'Chapter 3: Letters', 'page 13']
puts(tableOfContents[0].ljust(line_width/2) + tableOfContents[1].rjust(line_width/2 - 2))
puts(tableOfContents[2].ljust(line_width/2) + tableOfContents[3].rjust(line_width/2 - 1))
puts(tableOfContents[4].ljust(line_width/2) + tableOfContents[5].rjust(line_width/2))

