.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/NotiMsg;
.super Ljava/lang/Object;
.source "NotiMsg.java"


# static fields
.field public static final NONE:B = 0x0t

.field public static final alarm_wake_up:B = 0x4at

.field public static final call_send_cmc_info:B = 0x53t

.field public static final call_status:B = 0x6t

.field public static final cancel_alarm:B = 0x4bt

.field public static final cdpn_info:B = 0xet

.field public static final conf_call_changed:B = 0x8t

.field public static final contact_activated:B = 0x5t

.field public static final contact_download_notify:B = 0x3et

.field public static final contact_uri_info:B = 0x52t

.field public static final current_location_discovery_during_emergency_call:B = 0x54t

.field public static final dedicated_bearer_event:B = 0x12t

.field public static final dialog_event:B = 0x4ct

.field public static final dialog_subscribe_status:B = 0x4ft

.field public static final dns_response:B = 0x4et

.field public static final dtmf_param_data:B = 0x15t

.field public static final dump_message:B = 0x50t

.field public static final echolocate_msg:B = 0x3at

.field public static final euc_message:B = 0x1bt

.field public static final ft_incoming_session:B = 0x2at

.field public static final ft_progress:B = 0x29t

.field public static final group_chat_info_updated:B = 0x2dt

.field public static final group_chat_list_updated:B = 0x2ct

.field public static final group_chat_subscribe_status:B = 0x2bt

.field public static final im_composing_status_received:B = 0x21t

.field public static final im_conf_info_updated:B = 0x48t

.field public static final im_conference_info_updated:B = 0x23t

.field public static final im_message_received:B = 0x20t

.field public static final im_message_report_received:B = 0x24t

.field public static final im_notification_status_received:B = 0x22t

.field public static final im_session_invited:B = 0x1ft

.field public static final imdn_response_received:B = 0x25t

.field public static final incoming_call:B = 0x7t

.field public static final ish_incoming_session:B = 0x40t

.field public static final ish_session_established:B = 0x41t

.field public static final ish_session_terminated:B = 0x42t

.field public static final ish_transfer_progress:B = 0x43t

.field public static final message_noti:B = 0x1at

.field public static final message_revoke_response_received:B = 0x2et

.field public static final modify_call_data:B = 0xdt

.field public static final modify_video_data:B = 0xft

.field public static final names:[Ljava/lang/String;

.field public static final new_presence_info:B = 0x34t

.field public static final new_remote_capabilities:B = 0x33t

.field public static final notify_cmc_record_event_data:B = 0x11t

.field public static final notify_video_event_data:B = 0x10t

.field public static final options_received_info:B = 0x3ft

.field public static final presence_notify_status:B = 0x37t

.field public static final presence_publish_status:B = 0x35t

.field public static final presence_subscribe_status:B = 0x36t

.field public static final quantum_security_status_event:B = 0x14t

.field public static final refer_received:B = 0xat

.field public static final refer_status:B = 0xbt

.field public static final reg_info_changed:B = 0x9t

.field public static final registration_auth:B = 0x2t

.field public static final registration_impu:B = 0x4t

.field public static final registration_status:B = 0x1t

.field public static final report_chatbot_as_spam_response:B = 0x32t

.field public static final request_chatbot_anonymize_response:B = 0x30t

.field public static final request_chatbot_anonymize_response_received:B = 0x31t

.field public static final rrc_connection_event:B = 0x13t

.field public static final rtp_loss_rate_noti:B = 0x16t

.field public static final send_message_revoke_response:B = 0x2ft

.field public static final session_closed:B = 0x1dt

.field public static final session_established:B = 0x1et

.field public static final session_started:B = 0x1ct

.field public static final sign_digest_response:B = 0x55t

.field public static final sip_message:B = 0x39t

.field public static final slm_lmm_invited:B = 0x28t

.field public static final slm_message_incoming:B = 0x47t

.field public static final slm_progress:B = 0x27t

.field public static final slm_sip_response_received:B = 0x26t

.field public static final sms_noti:B = 0x19t

.field public static final sms_rp_ack:B = 0x18t

.field public static final ss_get_gba_key:B = 0x49t

.field public static final subscribe_status:B = 0x3t

.field public static final text_param_data:B = 0x17t

.field public static final update_route_table:B = 0xct

.field public static final vsh_incoming_session:B = 0x44t

.field public static final vsh_session_established:B = 0x45t

.field public static final vsh_session_terminated:B = 0x46t

.field public static final x509_cert_verify_request:B = 0x4dt

.field public static final xcap_message:B = 0x38t

.field public static final xdm_auth:B = 0x3ct

.field public static final xdm_req_gba_data:B = 0x3bt

.field public static final xdm_store_gba_data:B = 0x3dt

.field public static final xq_message:B = 0x51t


# direct methods
.method static constructor <clinit>()V
    .locals 86

    .line 94
    const-string v84, "current_location_discovery_during_emergency_call"

    const-string/jumbo v85, "sign_digest_response"

    const-string v0, "NONE"

    const-string/jumbo v1, "registration_status"

    const-string/jumbo v2, "registration_auth"

    const-string/jumbo v3, "subscribe_status"

    const-string/jumbo v4, "registration_impu"

    const-string v5, "contact_activated"

    const-string v6, "call_status"

    const-string v7, "incoming_call"

    const-string v8, "conf_call_changed"

    const-string/jumbo v9, "reg_info_changed"

    const-string/jumbo v10, "refer_received"

    const-string/jumbo v11, "refer_status"

    const-string/jumbo v12, "update_route_table"

    const-string v13, "modify_call_data"

    const-string v14, "cdpn_info"

    const-string v15, "modify_video_data"

    const-string/jumbo v16, "notify_video_event_data"

    const-string/jumbo v17, "notify_cmc_record_event_data"

    const-string v18, "dedicated_bearer_event"

    const-string/jumbo v19, "rrc_connection_event"

    const-string/jumbo v20, "quantum_security_status_event"

    const-string v21, "dtmf_param_data"

    const-string/jumbo v22, "rtp_loss_rate_noti"

    const-string/jumbo v23, "text_param_data"

    const-string/jumbo v24, "sms_rp_ack"

    const-string/jumbo v25, "sms_noti"

    const-string v26, "message_noti"

    const-string v27, "euc_message"

    const-string/jumbo v28, "session_started"

    const-string/jumbo v29, "session_closed"

    const-string/jumbo v30, "session_established"

    const-string v31, "im_session_invited"

    const-string v32, "im_message_received"

    const-string v33, "im_composing_status_received"

    const-string v34, "im_notification_status_received"

    const-string v35, "im_conference_info_updated"

    const-string v36, "im_message_report_received"

    const-string v37, "imdn_response_received"

    const-string/jumbo v38, "slm_sip_response_received"

    const-string/jumbo v39, "slm_progress"

    const-string/jumbo v40, "slm_lmm_invited"

    const-string v41, "ft_progress"

    const-string v42, "ft_incoming_session"

    const-string v43, "group_chat_subscribe_status"

    const-string v44, "group_chat_list_updated"

    const-string v45, "group_chat_info_updated"

    const-string v46, "message_revoke_response_received"

    const-string/jumbo v47, "send_message_revoke_response"

    const-string/jumbo v48, "request_chatbot_anonymize_response"

    const-string/jumbo v49, "request_chatbot_anonymize_response_received"

    const-string/jumbo v50, "report_chatbot_as_spam_response"

    const-string v51, "new_remote_capabilities"

    const-string v52, "new_presence_info"

    const-string/jumbo v53, "presence_publish_status"

    const-string/jumbo v54, "presence_subscribe_status"

    const-string/jumbo v55, "presence_notify_status"

    const-string/jumbo v56, "xcap_message"

    const-string/jumbo v57, "sip_message"

    const-string v58, "echolocate_msg"

    const-string/jumbo v59, "xdm_req_gba_data"

    const-string/jumbo v60, "xdm_auth"

    const-string/jumbo v61, "xdm_store_gba_data"

    const-string v62, "contact_download_notify"

    const-string/jumbo v63, "options_received_info"

    const-string v64, "ish_incoming_session"

    const-string v65, "ish_session_established"

    const-string v66, "ish_session_terminated"

    const-string v67, "ish_transfer_progress"

    const-string/jumbo v68, "vsh_incoming_session"

    const-string/jumbo v69, "vsh_session_established"

    const-string/jumbo v70, "vsh_session_terminated"

    const-string/jumbo v71, "slm_message_incoming"

    const-string v72, "im_conf_info_updated"

    const-string/jumbo v73, "ss_get_gba_key"

    const-string v74, "alarm_wake_up"

    const-string v75, "cancel_alarm"

    const-string v76, "dialog_event"

    const-string/jumbo v77, "x509_cert_verify_request"

    const-string v78, "dns_response"

    const-string v79, "dialog_subscribe_status"

    const-string v80, "dump_message"

    const-string/jumbo v81, "xq_message"

    const-string v82, "contact_uri_info"

    const-string v83, "call_send_cmc_info"

    filled-new-array/range {v0 .. v85}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/NotiMsg;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/NotiMsg;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
