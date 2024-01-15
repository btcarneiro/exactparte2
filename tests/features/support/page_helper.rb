Dir[File.join(File.dirname(__FILE__), "../pages/*_pages.rb")].each {|file| require file}

module Pages 
    def mapear
        @mapear ||= MapearElementos.new
    end
end