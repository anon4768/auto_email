library(RDCOMClient)
#
send_email <- function(vec_to = "",
                       vec_cc = "",
                       vec_bcc = "",
                       char_subject = "",
                       char_body = "",
                       char_htmlbody = "",
                       vec_attachments = "") {
  
  Outlook <- RDCOMClient::COMCreate("Outlook.Application")
  Email <- Outlook$CreateItem(0)
  Email[["to"]] <- vec_to
  Email[["cc"]] <- vec_cc
  Email[["bcc"]] <- vec_bcc
  Email[["subject"]] <- char_subject
  
  if (char_body != "" && char_htmlbody != "") {
    stop("Error")
  }
  
  if (char_htmlbody == "") {
    Email[["body"]] <- char_body
  } else {
    Email[["htmlbody"]] <- char_htmlbody
  }
  
  if (vec_attachments[1] != "") {
    for (i in seq_along(vec_attachments)) {
      Email[["attachments"]]$Add(vec_attachments[i])
    }
  }
  
  Email$Send()
}
recipient = "HR@OPM.gov"
cc = "supervisor@agency.gov"
subject = "5 bullets" 
n = 3 #.................number of bullets/samples for RNG

options = c(
  "this week I lived",
  "this week I laughed",
  "this week I loved",
  "this week I accomplished task 1",
  "this week I accomplished task 2",
  "this week I accomplished task 3",
  "this week I accomplished task 4"
)

this_week = paste0("<li>", sample(options, n), "</li>", collapse="")

body = paste0("<ul>", this_week, "</ul>")

send_email(
  vec_to = recipient,
  vec_cc = cc,
  char_subject = subject,
  char_htmlbody = body
)
