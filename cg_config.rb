require 'coursegen'

# bucket for AWS Deployment of the course
AWS_BUCKET = "cosi166b-s2016"

# Local directory path for directory of content
CONTENT_PATH = "/mydev/cosi166b-s2016"

# Copyright string
COPYRIGHT_STRING = "Copyright (2014-2016) R. Pito Salas, pitosalas@gmail.com"

# Course short name
COURSE_SHORT_NAME = "COSI 166b"
COURSE_LONG_NAME = "Software Engineering"
COURSE_ABBREV = "166b"

# Schedule information. Note that Monday is day 0
LECTURES_SCHEDULE_CONFIG = ScheduleDef.new(
  first_day: "jan-13-2016",
  weekdays: [:monday, :wednesday, :thursday],
  number: 39,
  skips: ["jan-18-2016", "feb-15-2016", "feb-17-2016", "feb-18-2016", "mar-28-2016",
          "apr-21-2016", "apr-25-2016", "apr-27-2016", "apr-28-2016"])

# Sections in tguhe right hand margin of the page
# Bullet choices are :dash, :star, :plus, :minus
SECTION_CONFIG = [
  SectionDef.new("Introduction", "intro", hidden: false, type: :section, bullet: :star),
  SectionDef.new("Lectures", "lectures", type: :lecture, schedule: LECTURES_SCHEDULE_CONFIG, bullet: :dash),
  SectionDef.new("Incubator", "incubator", hidden: false, type: :section),
  SectionDef.new("Background", "background", hidden: false, type: :section),
  SectionDef.new("Topics", "topics", hidden: true, type: :section),
  SectionDef.new("Extras", "extras", hidden: true, type: :section)
]
# Options are:
# bullet_style: css style for each bullet
STYLING_CONFIG = {bullet_style: "\"font-size: 60%; width: 10px; color: grey\""}
