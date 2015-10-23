require 'coursegen'

# bucket for AWS Deployment of the course
AWS_BUCKET = "cosi166-2015"

# Local directory path for directory of content
CONTENT_PATH = "/mydev/cosi166b-2014"

# Copyright string
COPYRIGHT_STRING = "Copyright (2014-2015) R. Pito Salas, pitosalas@gmail.com"

# Course short name
COURSE_SHORT_NAME = "COSI 166b"
COURSE_LONG_NAME = "Software Engineering"

# Schedule information. Note that Monday is day 0
LECTURES_SCHEDULE_CONFIG = ScheduleDef.new(
  first_day: "jan-13-2015",
  weekdays: [:tuesday, :wednesday, :friday],
  number: 39,
  skips: ["jan-27-2015", "jan-28-2015", "feb-17-2015", "feb-18-2015", 
          "feb-20-2015", "apr-3-2015", "apr-7-2015", "apr-8-2015", 
          "apr-10-2015"])

# Sections in the right hand margin of the page
# Bullet choices are :dash, :star, :plus, :minus
SECTION_CONFIG = [
  SectionDef.new("Introduction", "intro", hidden: false, type: :section, bullet: :star),
  SectionDef.new("Lectures", "lectures", type: :lecture, schedule: LECTURES_SCHEDULE_CONFIG, bullet: :dash),
  SectionDef.new("Incubator", "incubator", hidden: false, type: :section),
  SectionDef.new("Background", "background", hidden: false, type: :section),
  SectionDef.new("Topics", "topics", hidden: true, type: :section),
  SectionDef.new("Hidden", "hidden", hidden: true, type: :section)
]
# Options are:
# bullet_style: css style for each bullet
STYLING_CONFIG = {bullet_style: "\"font-size: 60%; width: 10px; color: grey\""}
