politicalAPI
============

Overview:
R code to collect summary political fundraising and candidate characteristics information using Opensecrets and Sunlight Foundation APIs.

API source links:
Opensecrets: https://www.opensecrets.org/api/
[Documentation: http://www.opensecrets.org/resources/create/api_doc.php]

Sunlight Foundation:politicalpartytime.org/api/ 
[Documentation: http://sunlightlabs.github.io/partytime-docs/]

Files:
opensecretsapi.R [Stores summary fundraising information for candidates in opensecrets_attributes.csv]
sunlightapi.R [Stores candidate information in sunlight_candidates.csv]

Notes: Opensecrets and Sunlight require API keys. Sunlight maintains a daily call limit of 200. 
