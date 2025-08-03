.class public interface abstract Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;
.super Ljava/lang/Object;
.source "ITelephonyDBColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final BCC:I = 0x81

.field public static final CC:I = 0x82

.field public static final CONTENT_BIN_FT_ORIGINAL:Ljava/lang/String; = "content://bin_ft/ft_original/"

.field public static final CONTENT_BIN_FT_THUMBNAIL:Ljava/lang/String; = "content://bin_ft/ft_thumbnail/"

.field public static final CONTENT_BIN_MMS:Landroid/net/Uri;

.field public static final CONTENT_BIN_MMS_ADDR:Ljava/lang/String; = "content://bin_mms/{0}/addr"

.field public static final CONTENT_BIN_MMS_PART:Landroid/net/Uri;

.field public static final CONTENT_BIN_SMS:Landroid/net/Uri;

.field public static final CONTENT_IM_FT_ORIGINAL:Ljava/lang/String; = "content://im/ft_original/"

.field public static final CONTENT_IM_FT_THUMBNAIL:Ljava/lang/String; = "content://im/ft_thumbnail/"

.field public static final CONTENT_MMS:Landroid/net/Uri;

.field public static final CONTENT_MMS_ADDR:Ljava/lang/String; = "content://mms/{0}/addr"

.field public static final CONTENT_MMS_PART:Landroid/net/Uri;

.field public static final CONTENT_RCS:Landroid/net/Uri;

.field public static final CONTENT_RCS_FT:Landroid/net/Uri;

.field public static final CONTENT_SMS:Landroid/net/Uri;

.field public static final CONTENT_SPAM_MMS_ADDR:Ljava/lang/String; = "content://spammms/spamaddr"

.field public static final CONTENT_SPAM_MMS_PART:Landroid/net/Uri;

.field public static final FROM:I = 0x89

.field public static final FROM_INSERT_ADDRESS_TOKEN_STR:Ljava/lang/String; = "insert-address-token"

.field public static final IMDN_MESSAGE_ID:Ljava/lang/String; = "imdn_message_id"

.field public static final MESSAGE_TYPE_INBOX:I = 0x1

.field public static final MESSAGE_TYPE_RETRIEVE_CONF:I = 0x84

.field public static final MESSAGE_TYPE_SEND_REQ:I = 0x80

.field public static final MESSAGE_TYPE_SENT:I = 0x2

.field public static final MSGAPP_BINCHATCONTENT_URI:Ljava/lang/String; = "content://bin_im"

.field public static final MSGAPP_BINFTCONTENT_URI:Ljava/lang/String; = "content://bin_ft"

.field public static final MSGAPP_CHATCONTENT_URI:Ljava/lang/String; = "content://im/chat"

.field public static final MSGAPP_FTCONTENT_URI:Ljava/lang/String; = "content://im/ft/"

.field public static final MSGAPP_IM_THREADS_CONTENT_URI:Ljava/lang/String; = "content://mms-sms/im-threads/"

.field public static final READ_MSG:I = 0x1

.field public static final SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

.field public static final SPAM_RCS_CONTENT_URI:Landroid/net/Uri;

.field public static final SPAM_RCS_FT_CONTENT_URI:Landroid/net/Uri;

.field public static final SPAM_RCS_THUMBNAIL_CONTENT_URI:Landroid/net/Uri;

.field public static final SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

.field public static final SPAM_TYPE:Ljava/lang/String; = "spam_type"

.field public static final TO:I = 0x97

.field public static final UNREAD_MSG:I = 0x0

.field public static final xml_smil_type:Ljava/lang/String; = "application/smil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_SMS:Landroid/net/Uri;

    .line 10
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_MMS:Landroid/net/Uri;

    .line 11
    const-string v0, "content://mms/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_MMS_PART:Landroid/net/Uri;

    .line 14
    const-string v0, "content://spammms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    .line 15
    const-string v0, "content://spamsms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    .line 16
    const-string v0, "content://spammms/spampart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_SPAM_MMS_PART:Landroid/net/Uri;

    .line 19
    const-string v0, "content://bin_sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_BIN_SMS:Landroid/net/Uri;

    .line 20
    const-string v0, "content://bin_mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_BIN_MMS:Landroid/net/Uri;

    .line 21
    const-string v0, "content://bin_mms/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_BIN_MMS_PART:Landroid/net/Uri;

    .line 24
    const-string v0, "content://im/chat"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_RCS:Landroid/net/Uri;

    .line 25
    const-string v0, "content://im/ft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_RCS_FT:Landroid/net/Uri;

    .line 31
    const-string v0, "content://spam_im/chat_inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->SPAM_RCS_CONTENT_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://spam_im/ft_inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->SPAM_RCS_FT_CONTENT_URI:Landroid/net/Uri;

    .line 33
    const-string v0, "content://spam_im/ft_thumbnail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->SPAM_RCS_THUMBNAIL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
