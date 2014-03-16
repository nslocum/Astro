include Math

EARTH_RADIUS = 6_371
KM_TO_MILE = 0.62137
DEG_TO_RADIANS = PI / 180.0

def circumference(radius)
  radius * 2 * PI
end


# ------------------------------------------------------------------------------
# Speed of rotation at equater (km/sec)
# Assume earth is a sphere
DIST_TO_SUN = 149_600_000
SUN_RADIUS = 1_391_000

SECONDS_PER_DAY = 24 * 60 * 60.0
EQUITORIAL_SPEED = circumference(EARTH_RADIUS) / SECONDS_PER_DAY

puts "Speed of rotation at earth's equator:"
printf "%.2f km/sec\n\n", EQUITORIAL_SPEED

# Speed at given latitude
lat = 45
(cos (lat * DEG_TO_RADIANS)) * EQUITORIAL_SPEED


# ------------------------------------------------------------------------------
# Speed of rotation around sun
# Assume AXIAL_TILT = 0
# Actual AXIAL_TILT = 23° 26′ 21″
SECONDS_PER_YEAR = 366.25 * SECONDS_PER_DAY
earth_speed = circumference(DIST_TO_SUN + SUN_RADIUS) / SECONDS_PER_YEAR

puts "Average speed of earth around the sun:"
printf "%.2f km/sec\n\n", earth_speed


# ------------------------------------------------------------------------------
# Speed of rotation around MW galaxy
LIGHT_YRS_TO_CENTER_OF_GALAXY = 28_000
LIGHT_YEAR_TO_KM = 9.4605284 * 10**12
KM_TO_CENTER_OF_GALAXY = LIGHT_YRS_TO_CENTER_OF_GALAXY * LIGHT_YEAR_TO_KM
GALACTIC_YEAR_SECONDS = 230_000_000 * SECONDS_PER_YEAR

galactic_speed = circumference(KM_TO_CENTER_OF_GALAXY) / GALACTIC_YEAR_SECONDS

puts "Average speed of our solar system around the Milky Way Galaxy:"
printf "%.2f km/sec\n\n", galactic_speed


