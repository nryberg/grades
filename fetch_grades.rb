#!/usr/bin/env ruby

#!/usr/bin/ruby

require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara-webkit'
require 'headless'

headless = Headless.new
headless.start


site = 'https://sisportal.mpls.k12.mn.us/discovery_portal.aspx'
uname = 'ARYB1501'
pwd = 'flamable'



Capybara.run_server = false
Capybara.current_driver = :webkit
Capybara.javascript_driver = :webkit
Capybara.app_host = site

module Test

  class Education
    include Capybara::DSL
    
    def get_results(uname, pwd)
      visit('/')
      fill_in "txtUsername", :with => uname
      fill_in "txtPassword", :with => pwd
      click_button "btLogin"
      page.driver.render("./screens/now1.png")
      click_link "Assignments"
      page.driver.render("./screens/now2.png")
      click_link "Expand"
      page.driver.render("./screens/now3.png")
      puts source 
      #fill_in "q", :with => "Capybara"
      #click_button "Google Search"
      #all(:xpath, "//li[@class='g']/h3/a").each { |a| puts a[:href] }
    end

 

  end 
  class Google
    include Capybara::DSL
    
    def get_results
      visit('/')
      fill_in "q", :with => "Capybara"
      click_button "Google Search"
      all(:xpath, "//li[@class='g']/h3/a").each { |a| puts a[:href] }

    end
  end
end

spider = Test::Education.new

spider.get_results(uname, pwd)
#page = agent.get(site)
#agent = Mechanize.new
#school_form = page.form('MainForm')
#school_form.txtUsername = uname
#school_form.txtPassword = pwd
#result = agent.submit(school_form, school_form.buttons.first)

#assignments = agent.get('https://sisportal.mpls.k12.mn.us/dscy_pp_stud_assign_summ.aspx')
#pp assignments
