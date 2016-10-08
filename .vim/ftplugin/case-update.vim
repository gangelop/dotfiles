" "abbreviations" {{{
"-------------------"

" common stuff "
ia <buffer> teh the

" initialisms "
ia <buffer> rhel Red Hat Enterprise Linux
ia <buffer> asap as soon as possible
ia <buffer> rh Red Hat
ia <buffer> fs file system
ia <buffer> kcs knowledgebase solution
ia <buffer> sc support case

" opening phrases "
ia <buffer> hi Hello,<CR><CR>Thank you for contacting Red Hat Support. My name is George Angelopoulos and I have taken ownership of this case.
ia <buffer> hifts Hello,<CR><CR>My name is George Angelopoulos. I am an engineer in the EMEA team and I will be assisting you with this support case as part of the 24x7 workflow.

ia <buffer> plswait Please allow me some time to look into the sosreport data and I will update you.

" thanks "
ia <buffer> tysos Thank you for providing the sosreport.
ia <buffer> tydata Thank you for providing that data.

" I need a sosreport "
ia <buffer> sospls Can you please generate an sosreport from this system and attach it to the case? This will give me a more direct view of the system as well as access to system logs.<CR><CR>  What is a sosreport and how to create one in Red Hat Enterprise Linux 4.6 and later?<CR>https://access.redhat.com/solutions/3592<CR>
ia <buffer> sosre Also, if possible, please boot into a rescue environment using the installation media, generate an sosreport from there and attach it to the case.<CR><CR>  How to generate sosreport from the rescue environment<CR>https://access.redhat.com/solutions/2872<CR>

ia <buffer> fubar I recommend re-installing and restoring from backup as the most reliable way to proceed.

" closing phrases "
ia <buffer> ithelps? Please let me know if this information helps or if there is something I can further clarify.

" kthnxbye "
ia <buffer> bb Kind regards,<CR>George
ia <buffer> cheers Cheers,<CR>George
ia <buffer> sig Kind regards,<CR>George Angelopoulos<CR>Technical Support Engineer - Red Hat

" useful links "
ia <buffer> sevlink Red Hat Support Severity Level Definitions<CR>https://access.redhat.com/support/policy/severity
ia <buffer> soclink Production Support Scope of Coverage<CR>https://access.redhat.com/support/offerings/production/soc
"}}}
" "miscellaneous" {{{
"-------------------"

set tabstop=2
set softtabstop=2
set shiftwidth=2
" }}}
" vim:fdm=marker
