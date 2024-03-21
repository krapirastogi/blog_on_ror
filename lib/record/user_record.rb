module Record
    class UserRecord
        def self.create
            excel_obj = Spreadsheet::Workbook.new # We have created a new object of the Spreadsheet book

            #sheet = book.create_worksheet(name: 'First sheet') # We are creating new sheet in the Spreadsheet(We can create multiple sheets in one Spreadsheet book)
      sheet = excel_obj.create_worksheet :name => "User Record"
        
      header_format = Spreadsheet::Format.new(weight: :bold, border: :thin)
      header_row = sheet.row(0)
      header_row.push('Name', 'Gender', 'Email','Role')
      header_row.set_format(0, header_format)
      header_row.set_format(1, header_format)
      header_row.set_format(2, header_format)
      header_row.set_format(3, header_format)


      users = User.all
      users.each_with_index do |user, index|
        sheet.row(index + 1).push(user.name, user.gender, user.email,user.role)
      end

      excel_obj.write Rails.root.join('app', 'assets', 'images', 'user_records.xls')
        end
    end
    
end
