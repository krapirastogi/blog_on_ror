module Excel
    class Docs
    def self.generate_pdf
        dirname = Rails.root.join('app', 'assets', 'images')
        Prawn::Font::AFM.hide_m17n_warning = true
        pdf = Prawn::Document.new(page_size: 'A4', page_layout: :landscape)
        pdf.font_families.update("Arial" => {
            :normal => Rails.root.join("app/assets/fonts/OpenSans-Regular.ttf"),
            :italic => Rails.root.join("app/assets/fonts/OpenSans-Regular.ttf"),
            :bold => Rails.root.join("app/assets/fonts/OpenSans-Bold.ttf"),
            :bold_italic => Rails.root.join("app/assets/fonts/OpenSans-Bold.ttf")
        })
        rev_row = [['TRDN xxx ', '  Rev. No. xxx ', ' Rev. Date xx/xx/xxx']]
        pdf.table(rev_row, :cell_style => {:borders => [], :padding => [0, 20, 10, 0]}) do
          column(0).style :width => 200
          column(1).style :width => 200
          column(3).style :width => 200
        end
        pdf.move_down(10)
          
        #booking_details = pdf.make_table(booking_data, :cell_style => {:borders => [], :padding => [5, 5, 5, 5]})
       
          pdf.font_size(16) do
            pdf.text "I am generating this pdf to understand creating pdfs in Rails ", align: :left, font_style: :bold
            pdf.fill_color "f70d1a"
            end
            pdf.font_size(12) do
                pdf.text "I am generating this pdf to understand creating pdfs in Rails ", align: :left, font_style: :bold
                pdf.fill_color "f70d1a"
            end
        pdf.render_file "#{dirname}/Test-#{Date.today.strftime("%m%y")}.pdf"


    end
    end
end