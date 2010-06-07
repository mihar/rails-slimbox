require 'fileutils'

FileUtils.mkdir File.dirname(__FILE__) + '/../../../public/images/slimbox'
FileUtils.mkdir File.dirname(__FILE__) + '/../../../public/javascripts/lib'
FileUtils.mkdir File.dirname(__FILE__) + '/../../../public/stylesheets/lib'
                                                                    
blank_gif       = File.dirname(__FILE__) + '/../../../public/images/slimbox/blank.gif'
closelabel_gif  = File.dirname(__FILE__) + '/../../../public/images/slimbox/closelabel.gif'
loading_gif     = File.dirname(__FILE__) + '/../../../public/images/slimbox/loading.gif'
nextlabel_gif   = File.dirname(__FILE__) + '/../../../public/images/slimbox/nextlabel.gif'
prevlabel_gif   = File.dirname(__FILE__) + '/../../../public/images/slimbox/prevlabel.gif'
slimbox_js      = File.dirname(__FILE__) + '/../../../public/javascripts/lib/slimbox2.js'
slimbox_css     = File.dirname(__FILE__) + '/../../../public/stylesheets/lib/slimbox2.css'


FileUtils.cp File.dirname(__FILE__) + '/public/images/blank.gif'         blank_gif unless File.exist?(blank_gif)
FileUtils.cp File.dirname(__FILE__) + '/public/images/closelabel.gif'    closelabel_gif unless File.exist?(closelabel_gif)
FileUtils.cp File.dirname(__FILE__) + '/public/images/loading.gif'       loading_gif unless File.exist?(loading_gif)
FileUtils.cp File.dirname(__FILE__) + '/public/images/nextlabel.gif'     nextlabel_gif unless File.exist?(nextlabel_gif)
FileUtils.cp File.dirname(__FILE__) + '/public/images/prevlabel.gif'     prevlabel_gif unless File.exist?(prevlabel_gif)
FileUtils.cp File.dirname(__FILE__) + '/public/javascripts/slimbox2.js'  slimbox_js unless File.exist?(slimbox_js)
FileUtils.cp File.dirname(__FILE__) + '/public/stylesheets/slimbox2.css' slimbox_css unless File.exist?(slimbox_css)

puts IO.read(File.join(File.dirname(__FILE__), 'INSTALLED'))