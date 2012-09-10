#!/usr/bin/env ruby -w

require 'rubygems'
require 'capybara'
require 'capybara/web-kit'

site = 'https://sisportal.mpls.k12.mn.us/discovery_portal.aspx'
uname = 'ARYB1501'
pwd = 'flamable'

#agent = Mechanize.new
#page = agent.get(site)
#school_form = page.form('MainForm')
#school_form.txtUsername = uname
#school_form.txtPassword = pwd
#result = agent.submit(school_form, school_form.buttons.first)

#assignments = agent.get('https://sisportal.mpls.k12.mn.us/dscy_pp_stud_assign_summ.aspx')
#pp assignments
