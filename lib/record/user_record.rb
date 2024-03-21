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

      excel_obj.write Rails.root.join('app', 'assets', 'images', 'user_records.xlsx')
        end
    
    def self.read
        excel_path = Rails.root.join('app', 'assets', 'images', 'user_records3.xlsx')
        puts excel_path
        excel = Roo::Spreadsheet.open(excel_path, extension: :xlsx)
        excel.info

        header = excel.row(1)
        users_data = []
        
        (2..excel.last_row).each do |i|
          row_data = {}
          header.each_with_index do |column, index|
            row_data[column.downcase.gsub(' ', '_').to_sym] = excel.cell(i, index + 1)
          end
          users_data << row_data
        end
  
        users_data
      end
  
    end
end
