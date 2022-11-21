library(shiny)

# Read data
####################################
# User interface                   #
####################################

ui <- fluidPage(theme = shinytheme("united"),
                
                # Page header
                headerPanel('TRIZ'),
                
                # Input values
                sidebarPanel(
                        HTML("<h3>Input parameters</h3>"),
                        
                        selectInput("outlook", label = "Thông số tăng (tốt lên):", 
                                    choices = list("1. Trọng lượng đối tượng chuyển động"=1,
                                                   "2. Trọng lượng đối tượng bất động"=2,
                                                   "3. Độ dài đối tượng chuyển động"=3,
                                                   "4. Độ dài đối tượng bất động"=4,
                                                   "5. Diện tích đối tượng chuyển động"=5,
                                                   "6. Diện tích đối tượng bất động"=6,
                                                   "7. Thể tích đối tượng chuyển động"=7,
                                                   "8. Thể tích đối tượng bất động"=8,
                                                   "9. Vận tốc"=9,
                                                   "10. Lực"=10,
                                                   "11. Ứng suất, áp suất"=11,
                                                   "12. Hình dạng"=12,
                                                   "13. Tính ổn định của thành phần đối tượng"=13,
                                                   "14. Độ bền"=14,
                                                   "15. Thời hạn hoạt động của đối tượng chuyển động"=15,
                                                   "16. Thời hạn hoạt động của đối tượng bất động"=16,
                                                   "17. Nhiệt độ"=17,
                                                   "18. Độ chiếu sáng (độ rọi)"=18,
                                                   "19. Năng lượng tiêu hao bởi đối tượng chuyển động"=19,
                                                   "20. Năng lượng tiêu hao bởi đối tượng bất động"=20,
                                                   "21.Công suất"=21,
                                                   "22. Năng lượng mất mát"=22,
                                                   "23. Chất thể mất mát"=23,
                                                   "24. Thông tin mất mát"=24,
                                                   "25. Thời gian mất mát"=25,
                                                   "26. Lượng chất thể"=26,
                                                   "27. Độ tin cậy"=27,
                                                   "28. Độ chính xác trong đo lường"=28,
                                                   "29. Độ chính xác trong chế tạo"=29,
                                                   "30. Các nhân tố có hại từ bên ngoài tác động lên đối tượng"=30,
                                                   "31. Các nhân tố có hại sinh ra bởi chính đối tượng"=31,
                                                   "32. Tiện lợi trong chế tạo"=32,
                                                   "33. Tiện lợi trong sử dụng, vận hành"=33,
                                                   "34. Tiện lợi trong sửa chữa"=34,
                                                   "35. Độ thích nghi, tính phổ dụng (vạn năng)"=35,
                                                   "36. Độ phức tạp của thiết bị"=36,
                                                   "37. Độ phức tạp trong kiểm tra và đo lường"=37,
                                                   "38. Mức độ tự động hóa"=38,
                                                   "39. Năng suất"=39), 
                                    selected = "1. Trọng lượng của đối tượng chuyển động"),
                        
                        selectInput("windy", label = "Thông số giảm (xấu đi):", 
                                    choices = list("1. Trọng lượng đối tượng chuyển động"=1,
                                                   "2. Trọng lượng đối tượng bất động"=2,
                                                   "3. Độ dài đối tượng chuyển động"=3,
                                                   "4. Độ dài đối tượng bất động"=4,
                                                   "5. Diện tích đối tượng chuyển động"=5,
                                                   "6. Diện tích đối tượng bất động"=6,
                                                   "7. Thể tích đối tượng chuyển động"=7,
                                                   "8. Thể tích đối tượng bất động"=8,
                                                   "9. Vận tốc"=9,
                                                   "10. Lực"=10,
                                                   "11. Ứng suất, áp suất"=11,
                                                   "12. Hình dạng"=12,
                                                   "13. Tính ổn định của thành phần đối tượng"=13,
                                                   "14. Độ bền"=14,
                                                   "15. Thời hạn hoạt động của đối tượng chuyển động"=15,
                                                   "16. Thời hạn hoạt động của đối tượng bất động"=16,
                                                   "17. Nhiệt độ"=17,
                                                   "18. Độ chiếu sáng (độ rọi)"=18,
                                                   "19. Năng lượng tiêu hao bởi đối tượng chuyển động"=19,
                                                   "20. Năng lượng tiêu hao bởi đối tượng bất động"=20,
                                                   "21.Công suất"=21,
                                                   "22. Năng lượng mất mát"=22,
                                                   "23. Chất thể mất mát"=23,
                                                   "24. Thông tin mất mát"=24,
                                                   "25. Thời gian mất mát"=25,
                                                   "26. Lượng chất thể"=26,
                                                   "27. Độ tin cậy"=27,
                                                   "28. Độ chính xác trong đo lường"=28,
                                                   "29. Độ chính xác trong chế tạo"=29,
                                                   "30. Các nhân tố có hại từ bên ngoài tác động lên đối tượng"=30,
                                                   "31. Các nhân tố có hại sinh ra bởi chính đối tượng"=31,
                                                   "32. Tiện lợi trong chế tạo"=32,
                                                   "33. Tiện lợi trong sử dụng, vận hành"=33,
                                                   "34. Tiện lợi trong sửa chữa"=34,
                                                   "35. Độ thích nghi, tính phổ dụng (vạn năng)"=35,
                                                   "36. Độ phức tạp của thiết bị"=36,
                                                   "37. Độ phức tạp trong kiểm tra và đo lường"=37,
                                                   "38. Mức độ tự động hóa"=38,
                                                   "39. Năng suất"=39), 
                                    selected = "2. Trọng lượng đối tượng bất động"),
                        
                        actionButton("submitbutton", "Submit", class = "btn btn-primary")
                ),
                
                mainPanel(
                        tags$label(h3('Status/Output')), # Status/Output Text Box
                        verbatimTextOutput('contents'),
                        tableOutput('tabledata') # Results table
                ) # mainPanel()
)

