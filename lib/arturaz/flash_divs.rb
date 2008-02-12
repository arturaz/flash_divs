module Arturaz
  module FlashDivs
    # Output divs for flash messages.
    def flash_divs(options={})
      options = {
        :show_notice => true,
        :show_error => true,
        :div_id => 'flash',
        :notice_div_id => 'flash_notice',
        :error_div_id => 'flash_error'
      }.merge(options)
      
      html = ""
      if (options[:show_notice] and flash[:notice]) or \
         (options[:show_error] and flash[:error])
         
        html += "<div id='#{options[:div_id]}'>"        
        if options[:show_error] and flash[:error]
          html += "<div id='#{options[:error_div_id]}'>" + flash[:error] +
            "</div>"
        end
        if options[:show_notice] and flash[:notice]
          html += "<div id='#{options[:notice_div_id]}'>" + flash[:notice] +
            "</div>"
        end
        html += "</div>"
      end
    end
  end
end
