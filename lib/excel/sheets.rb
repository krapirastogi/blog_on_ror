module Excel
    class Sheets
        def self.create
            excel_obj = Spreadsheet::Workbook.new # We have created a new object of the Spreadsheet book

            #sheet = book.create_worksheet(name: 'First sheet') # We are creating new sheet in the Spreadsheet(We can create multiple sheets in one Spreadsheet book)
      sheet = excel_obj.create_worksheet :name => "New Work Sheet"
      header_row_count = 0
      bold = Spreadsheet::Format.new :weight => :bold
      border = Spreadsheet::Format.new :top => :thin,
                                       :right => :thin,
                                       :left => :thin,
                                       :bottom => :thin
      bold_border = Spreadsheet::Format.new :weight => :bold,
                                            :top => :thin,
                                            :right => :thin,
                                            :left => :thin,
                                            :bottom => :thin
      4.times do |x| sheet.row(header_row_count).set_format(x , bold) end
          4.times do |x| sheet.row(header_row_count).set_format(x , bold_border) end
            # syntax to create new row is as the following:
            # sheet.row(row_number).push(column first', 'column second', 'column third')

            # Let's create first row as the following.
            sheet.row(0).push('Test Name', 'Test country', 'Test city', 'Test profession') # Number of arguments will be number of columns

            sheet.row(1).push('Krapi', 'India', 'Lucknow', 'Developer') 
        excel_obj.write Rails.root.join('app','assets','images','default.xls')
        end
    end

end
