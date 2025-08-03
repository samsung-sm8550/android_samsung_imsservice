.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RespMsg;
.super Ljava/lang/Object;
.source "RespMsg.java"


# static fields
.field public static final NONE:B = 0x0t

.field public static final call_response:B = 0x2t

.field public static final close_session_resp:B = 0x6t

.field public static final csh_general_response:B = 0xet

.field public static final general_response:B = 0x1t

.field public static final names:[Ljava/lang/String;

.field public static final send_euc_response_response:B = 0xft

.field public static final send_im_message_resp:B = 0x8t

.field public static final send_im_noti_resp:B = 0x9t

.field public static final send_message_revoke_internal_resp:B = 0xct

.field public static final send_slm_resp:B = 0xbt

.field public static final send_sms_resp:B = 0x4t

.field public static final sipdialog_general_response:B = 0x10t

.field public static final start_media_resp:B = 0x7t

.field public static final start_session_resp:B = 0x5t

.field public static final subscribe_response:B = 0x3t

.field public static final update_participants_resp:B = 0xat

.field public static final xdm_general_response:B = 0xdt


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 25
    const-string/jumbo v15, "send_euc_response_response"

    const-string/jumbo v16, "sipdialog_general_response"

    const-string v0, "NONE"

    const-string v1, "general_response"

    const-string v2, "call_response"

    const-string/jumbo v3, "subscribe_response"

    const-string/jumbo v4, "send_sms_resp"

    const-string/jumbo v5, "start_session_resp"

    const-string v6, "close_session_resp"

    const-string/jumbo v7, "start_media_resp"

    const-string/jumbo v8, "send_im_message_resp"

    const-string/jumbo v9, "send_im_noti_resp"

    const-string/jumbo v10, "update_participants_resp"

    const-string/jumbo v11, "send_slm_resp"

    const-string/jumbo v12, "send_message_revoke_internal_resp"

    const-string/jumbo v13, "xdm_general_response"

    const-string v14, "csh_general_response"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RespMsg;->names:[Ljava/lang/String;

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

    .line 27
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RespMsg;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
