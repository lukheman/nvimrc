let g:user_emmet_settings = {
\   'html': {
\       'empty_element_suffix': ' />',
\       'default_attributes': {
\           'input': {'type': 'text', 'name': ''}
\       },
\       'expandos': {
\           'inel': 'label+input'
\       },
\       'snippets': {
\           'html': "<!DOCTYPE html>\n<html>\n<head>\n\t<title></title>\n</head>\n<body>\n\t${cursor}\n</body>\n</html>"
\       }
\   },
\   'javascript' : {
\       'snippets' : {
\           'jq' : "\\$(function() {\n\t${cursor}${child}\n});",
\       }
\   }
\}
