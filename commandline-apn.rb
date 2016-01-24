require 'houston'



APN = Houston::Client.development
APN.certificate = File.read("./APNsRedDev.pem")

token = "<9f430c32 49a2d142 b927e7ae 6aa91c78 91e30b12 b1c70070 fe2ce1b4 1c8928f2>" 

notification = Houston::Notification.new(device: token)
notification.alert = "remote notification from commandline"

notification.badge = 1
notification.sound = "sound.aiff"
notification.category = "INVITE_CATEGORY"
notification.content_available = true
notification.custom_data = {agentKey: "8e328Kpu928skdkoakdlafjdklas+"}



APN.push(notification)


