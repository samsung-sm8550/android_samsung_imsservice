.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReqMsg;
.super Ljava/lang/Object;
.source "ReqMsg.java"


# static fields
.field public static final NONE:B = 0x0t

.field public static final names:[Ljava/lang/String;

.field public static final request_accept_call:B = 0x10t

.field public static final request_accept_ft_session:B = 0x30t

.field public static final request_accept_im_session:B = 0x28t

.field public static final request_accept_slm:B = 0x39t

.field public static final request_accept_transfer_call:B = 0x14t

.field public static final request_alarm_wake_up:B = 0x6et

.field public static final request_cancel_ft_session:B = 0x2ft

.field public static final request_cancel_transfer_call:B = 0x1dt

.field public static final request_capability_exchange:B = 0x3ct

.field public static final request_chatbot_anonymize:B = 0x34t

.field public static final request_clear_all_call_internal:B = 0x74t

.field public static final request_close_im_session:B = 0x29t

.field public static final request_delete_tcp_client_socket:B = 0x8t

.field public static final request_dns_query:B = 0x45t

.field public static final request_emergency_location_publish:B = 0x7at

.field public static final request_enable_quantum_security_service:B = 0x4bt

.field public static final request_end_call:B = 0xet

.field public static final request_euc_send_response:B = 0x24t

.field public static final request_group_info_subscribe:B = 0x38t

.field public static final request_group_list_subscribe:B = 0x37t

.field public static final request_handle_cmc_csfb:B = 0x5dt

.field public static final request_handle_dtmf:B = 0x61t

.field public static final request_hold_call:B = 0x11t

.field public static final request_hold_video:B = 0x19t

.field public static final request_im_set_more_info_to_sip_ua:B = 0x3bt

.field public static final request_ish_accept_session:B = 0x5ft

.field public static final request_ish_start_session:B = 0x5et

.field public static final request_ish_stop_session:B = 0x60t

.field public static final request_make_call:B = 0xdt

.field public static final request_make_conf_call:B = 0x1et

.field public static final request_modify_call_type:B = 0x16t

.field public static final request_modify_video_quality:B = 0x25t

.field public static final request_msg_set_msg_app_info_to_sip_ua:B = 0x26t

.field public static final request_network_suspended:B = 0x7t

.field public static final request_ntp_time_offset:B = 0x71t

.field public static final request_open_sip_dialog:B = 0x6at

.field public static final request_options_cap_exchange:B = 0x51t

.field public static final request_options_send_cmc_check_msg:B = 0x52t

.field public static final request_options_send_error_response:B = 0x50t

.field public static final request_options_send_response:B = 0x4ft

.field public static final request_presence_publish:B = 0x3et

.field public static final request_presence_subscribe:B = 0x40t

.field public static final request_presence_unpublish:B = 0x3ft

.field public static final request_presence_unsubscribe:B = 0x41t

.field public static final request_progress_incoming_call:B = 0x18t

.field public static final request_publish_dialog:B = 0x20t

.field public static final request_pulling_call:B = 0x1ct

.field public static final request_receive_sms_resp:B = 0x23t

.field public static final request_registration:B = 0x4t

.field public static final request_reject_call:B = 0x15t

.field public static final request_reject_im_session:B = 0x33t

.field public static final request_reject_modify_call_type:B = 0x1bt

.field public static final request_reject_slm:B = 0x3at

.field public static final request_reply_modify_call_type:B = 0x17t

.field public static final request_report_chatbot_as_spam:B = 0x35t

.field public static final request_resume_call:B = 0x12t

.field public static final request_resume_video:B = 0x1at

.field public static final request_rtp_stats_to_stack:B = 0x68t

.field public static final request_send_cmc_info:B = 0x48t

.field public static final request_send_dm_state:B = 0x79t

.field public static final request_send_dtmf_event:B = 0x78t

.field public static final request_send_im_composing_status:B = 0x2ct

.field public static final request_send_im_message:B = 0x2bt

.field public static final request_send_im_notification_status:B = 0x2dt

.field public static final request_send_im_slm_message:B = 0x31t

.field public static final request_send_info:B = 0x47t

.field public static final request_send_media_event:B = 0x4dt

.field public static final request_send_message_revoke_request:B = 0x67t

.field public static final request_send_msg:B = 0x21t

.field public static final request_send_negotiated_local_sdp:B = 0x7dt

.field public static final request_send_relay_event:B = 0x4et

.field public static final request_send_rp_ack_resp:B = 0x22t

.field public static final request_send_sip:B = 0x69t

.field public static final request_send_slm_file:B = 0x32t

.field public static final request_send_text:B = 0x62t

.field public static final request_send_vcs_info:B = 0x49t

.field public static final request_set_own_capabilities:B = 0x3dt

.field public static final request_set_preferred_impu:B = 0x6t

.field public static final request_set_quantum_security_info:B = 0x4at

.field public static final request_set_text_mode:B = 0x9t

.field public static final request_set_video_crt_audio:B = 0x77t

.field public static final request_set_vowifi_5gsa_mode:B = 0x76t

.field public static final request_silent_log_enabled:B = 0x70t

.field public static final request_start_camera:B = 0x42t

.field public static final request_start_cmc_record:B = 0x75t

.field public static final request_start_ft_session:B = 0x2et

.field public static final request_start_im_session:B = 0x27t

.field public static final request_start_local_ring_back_tone:B = 0x6bt

.field public static final request_start_media:B = 0x2at

.field public static final request_start_record:B = 0x72t

.field public static final request_start_video_earlymedia:B = 0x5ct

.field public static final request_stop_camera:B = 0x43t

.field public static final request_stop_local_ring_back_tone:B = 0x6ct

.field public static final request_stop_record:B = 0x73t

.field public static final request_transfer_call:B = 0x13t

.field public static final request_ua_creation:B = 0x2t

.field public static final request_ua_deletion:B = 0x3t

.field public static final request_update_airplane_mode:B = 0x7ct

.field public static final request_update_aka_resp:B = 0x5t

.field public static final request_update_audio_interface:B = 0x46t

.field public static final request_update_call:B = 0xft

.field public static final request_update_cmc_ext_call_count:B = 0x4ct

.field public static final request_update_cmc_hotspot_state:B = 0x7et

.field public static final request_update_common_config:B = 0x1t

.field public static final request_update_conf_call:B = 0x1ft

.field public static final request_update_feature_tag:B = 0xct

.field public static final request_update_geolocation:B = 0x5bt

.field public static final request_update_nr_sa_mode_on_start:B = 0x7bt

.field public static final request_update_pani:B = 0x44t

.field public static final request_update_participants:B = 0x36t

.field public static final request_update_rat:B = 0x53t

.field public static final request_update_sign_digest_response:B = 0x7ft

.field public static final request_update_sim_info:B = 0x6dt

.field public static final request_update_srvcc_version:B = 0xat

.field public static final request_update_time_in_plani:B = 0x54t

.field public static final request_update_vce_config:B = 0x66t

.field public static final request_update_xq_enable:B = 0xbt

.field public static final request_vsh_accept_session:B = 0x64t

.field public static final request_vsh_start_session:B = 0x63t

.field public static final request_vsh_stop_session:B = 0x65t

.field public static final request_x509_cert_verify_result:B = 0x6ft

.field public static final request_xdm_fetch_document:B = 0x58t

.field public static final request_xdm_update_aka_resp:B = 0x56t

.field public static final request_xdm_update_gba_data:B = 0x55t

.field public static final request_xdm_update_gba_key:B = 0x57t

.field public static final request_xdm_upload_contacts:B = 0x5at

.field public static final request_xdm_upload_pres_rules:B = 0x59t


# direct methods
.method static constructor <clinit>()V
    .locals 128

    .line 136
    const-string/jumbo v126, "request_update_cmc_hotspot_state"

    const-string/jumbo v127, "request_update_sign_digest_response"

    const-string v0, "NONE"

    const-string/jumbo v1, "request_update_common_config"

    const-string/jumbo v2, "request_ua_creation"

    const-string/jumbo v3, "request_ua_deletion"

    const-string/jumbo v4, "request_registration"

    const-string/jumbo v5, "request_update_aka_resp"

    const-string/jumbo v6, "request_set_preferred_impu"

    const-string/jumbo v7, "request_network_suspended"

    const-string/jumbo v8, "request_delete_tcp_client_socket"

    const-string/jumbo v9, "request_set_text_mode"

    const-string/jumbo v10, "request_update_srvcc_version"

    const-string/jumbo v11, "request_update_xq_enable"

    const-string/jumbo v12, "request_update_feature_tag"

    const-string/jumbo v13, "request_make_call"

    const-string/jumbo v14, "request_end_call"

    const-string/jumbo v15, "request_update_call"

    const-string/jumbo v16, "request_accept_call"

    const-string/jumbo v17, "request_hold_call"

    const-string/jumbo v18, "request_resume_call"

    const-string/jumbo v19, "request_transfer_call"

    const-string/jumbo v20, "request_accept_transfer_call"

    const-string/jumbo v21, "request_reject_call"

    const-string/jumbo v22, "request_modify_call_type"

    const-string/jumbo v23, "request_reply_modify_call_type"

    const-string/jumbo v24, "request_progress_incoming_call"

    const-string/jumbo v25, "request_hold_video"

    const-string/jumbo v26, "request_resume_video"

    const-string/jumbo v27, "request_reject_modify_call_type"

    const-string/jumbo v28, "request_pulling_call"

    const-string/jumbo v29, "request_cancel_transfer_call"

    const-string/jumbo v30, "request_make_conf_call"

    const-string/jumbo v31, "request_update_conf_call"

    const-string/jumbo v32, "request_publish_dialog"

    const-string/jumbo v33, "request_send_msg"

    const-string/jumbo v34, "request_send_rp_ack_resp"

    const-string/jumbo v35, "request_receive_sms_resp"

    const-string/jumbo v36, "request_euc_send_response"

    const-string/jumbo v37, "request_modify_video_quality"

    const-string/jumbo v38, "request_msg_set_msg_app_info_to_sip_ua"

    const-string/jumbo v39, "request_start_im_session"

    const-string/jumbo v40, "request_accept_im_session"

    const-string/jumbo v41, "request_close_im_session"

    const-string/jumbo v42, "request_start_media"

    const-string/jumbo v43, "request_send_im_message"

    const-string/jumbo v44, "request_send_im_composing_status"

    const-string/jumbo v45, "request_send_im_notification_status"

    const-string/jumbo v46, "request_start_ft_session"

    const-string/jumbo v47, "request_cancel_ft_session"

    const-string/jumbo v48, "request_accept_ft_session"

    const-string/jumbo v49, "request_send_im_slm_message"

    const-string/jumbo v50, "request_send_slm_file"

    const-string/jumbo v51, "request_reject_im_session"

    const-string/jumbo v52, "request_chatbot_anonymize"

    const-string/jumbo v53, "request_report_chatbot_as_spam"

    const-string/jumbo v54, "request_update_participants"

    const-string/jumbo v55, "request_group_list_subscribe"

    const-string/jumbo v56, "request_group_info_subscribe"

    const-string/jumbo v57, "request_accept_slm"

    const-string/jumbo v58, "request_reject_slm"

    const-string/jumbo v59, "request_im_set_more_info_to_sip_ua"

    const-string/jumbo v60, "request_capability_exchange"

    const-string/jumbo v61, "request_set_own_capabilities"

    const-string/jumbo v62, "request_presence_publish"

    const-string/jumbo v63, "request_presence_unpublish"

    const-string/jumbo v64, "request_presence_subscribe"

    const-string/jumbo v65, "request_presence_unsubscribe"

    const-string/jumbo v66, "request_start_camera"

    const-string/jumbo v67, "request_stop_camera"

    const-string/jumbo v68, "request_update_pani"

    const-string/jumbo v69, "request_dns_query"

    const-string/jumbo v70, "request_update_audio_interface"

    const-string/jumbo v71, "request_send_info"

    const-string/jumbo v72, "request_send_cmc_info"

    const-string/jumbo v73, "request_send_vcs_info"

    const-string/jumbo v74, "request_set_quantum_security_info"

    const-string/jumbo v75, "request_enable_quantum_security_service"

    const-string/jumbo v76, "request_update_cmc_ext_call_count"

    const-string/jumbo v77, "request_send_media_event"

    const-string/jumbo v78, "request_send_relay_event"

    const-string/jumbo v79, "request_options_send_response"

    const-string/jumbo v80, "request_options_send_error_response"

    const-string/jumbo v81, "request_options_cap_exchange"

    const-string/jumbo v82, "request_options_send_cmc_check_msg"

    const-string/jumbo v83, "request_update_rat"

    const-string/jumbo v84, "request_update_time_in_plani"

    const-string/jumbo v85, "request_xdm_update_gba_data"

    const-string/jumbo v86, "request_xdm_update_aka_resp"

    const-string/jumbo v87, "request_xdm_update_gba_key"

    const-string/jumbo v88, "request_xdm_fetch_document"

    const-string/jumbo v89, "request_xdm_upload_pres_rules"

    const-string/jumbo v90, "request_xdm_upload_contacts"

    const-string/jumbo v91, "request_update_geolocation"

    const-string/jumbo v92, "request_start_video_earlymedia"

    const-string/jumbo v93, "request_handle_cmc_csfb"

    const-string/jumbo v94, "request_ish_start_session"

    const-string/jumbo v95, "request_ish_accept_session"

    const-string/jumbo v96, "request_ish_stop_session"

    const-string/jumbo v97, "request_handle_dtmf"

    const-string/jumbo v98, "request_send_text"

    const-string/jumbo v99, "request_vsh_start_session"

    const-string/jumbo v100, "request_vsh_accept_session"

    const-string/jumbo v101, "request_vsh_stop_session"

    const-string/jumbo v102, "request_update_vce_config"

    const-string/jumbo v103, "request_send_message_revoke_request"

    const-string/jumbo v104, "request_rtp_stats_to_stack"

    const-string/jumbo v105, "request_send_sip"

    const-string/jumbo v106, "request_open_sip_dialog"

    const-string/jumbo v107, "request_start_local_ring_back_tone"

    const-string/jumbo v108, "request_stop_local_ring_back_tone"

    const-string/jumbo v109, "request_update_sim_info"

    const-string/jumbo v110, "request_alarm_wake_up"

    const-string/jumbo v111, "request_x509_cert_verify_result"

    const-string/jumbo v112, "request_silent_log_enabled"

    const-string/jumbo v113, "request_ntp_time_offset"

    const-string/jumbo v114, "request_start_record"

    const-string/jumbo v115, "request_stop_record"

    const-string/jumbo v116, "request_clear_all_call_internal"

    const-string/jumbo v117, "request_start_cmc_record"

    const-string/jumbo v118, "request_set_vowifi_5gsa_mode"

    const-string/jumbo v119, "request_set_video_crt_audio"

    const-string/jumbo v120, "request_send_dtmf_event"

    const-string/jumbo v121, "request_send_dm_state"

    const-string/jumbo v122, "request_emergency_location_publish"

    const-string/jumbo v123, "request_update_nr_sa_mode_on_start"

    const-string/jumbo v124, "request_update_airplane_mode"

    const-string/jumbo v125, "request_send_negotiated_local_sdp"

    filled-new-array/range {v0 .. v127}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReqMsg;->names:[Ljava/lang/String;

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

    .line 138
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReqMsg;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
