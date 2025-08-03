.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FeatureTag;
.super Ljava/lang/Object;
.source "FeatureTag.java"


# static fields
.field public static final BURN_MSG:I = 0x22

.field public static final CALL_COMPOSER:I = 0xe

.field public static final CANCEL_MESSAGE:I = 0x2f

.field public static final CARD_MSG:I = 0x29

.field public static final CDMALESS:I = 0x8

.field public static final CDPN:I = 0x7

.field public static final CHAT:I = 0x14

.field public static final CHATBOT_CHAT_SESSION:I = 0x2c

.field public static final CHATBOT_ROLE:I = 0x36

.field public static final CHATBOT_STANDALONE_MSG:I = 0x2d

.field public static final CHATBOT_VERSION:I = 0x37

.field public static final CHAT_CPM:I = 0xc

.field public static final CLOUD_FILE:I = 0x20

.field public static final CPIMEXT:I = 0x39

.field public static final DATACHANNEL:I = 0x3a

.field public static final DEFERRED_CPM:I = 0xb

.field public static final EXTENDED_BOT_MSG:I = 0x2e

.field public static final EXTENDED_MESSAGING:I = 0x31

.field public static final FT:I = 0x16

.field public static final FT_CPM:I = 0xd

.field public static final FT_HTTP:I = 0x19

.field public static final FT_HTTP_EXTRA:I = 0x21

.field public static final FT_STORE:I = 0x18

.field public static final FT_THUMBNAIL:I = 0x17

.field public static final FT_VIA_SMS:I = 0x26

.field public static final GEOLOCATION_PULL:I = 0x1d

.field public static final GEOLOCATION_PULL_FT:I = 0x1e

.field public static final GEOLOCATION_PUSH:I = 0x1f

.field public static final GEO_VIA_SMS:I = 0x27

.field public static final GROUP_MANAGEMENT:I = 0x24

.field public static final INTEGRATED_MSG:I = 0x1b

.field public static final IPCALL:I = 0x0

.field public static final IPCALL_VIDEO:I = 0x1

.field public static final IPCALL_VIDEO_ONLY:I = 0x2

.field public static final ISH:I = 0x12

.field public static final LAST_SEEN_ACTIVE:I = 0x2b

.field public static final MMTEL:I = 0x9

.field public static final MMTEL_AUDIO:I = 0x5

.field public static final MMTEL_CALL_COMPOSER:I = 0x38

.field public static final MMTEL_VIDEO:I = 0x6

.field public static final MSG_REVOKE:I = 0x28

.field public static final PLUG_IN:I = 0x30

.field public static final POST_CALL:I = 0x10

.field public static final PRESENCE_DISCOVERY:I = 0x13

.field public static final PUBLIC_MSG:I = 0x2a

.field public static final RCS_TELEPHONY_CS:I = 0x33

.field public static final RCS_TELEPHONY_VOLTE:I = 0x32

.field public static final SF_GROUP_CHAT:I = 0x15

.field public static final SHARED_MAP:I = 0xf

.field public static final SHARED_SKETCH:I = 0x11

.field public static final SMS:I = 0x4

.field public static final SOCIAL_PRESENCE:I = 0x1c

.field public static final SRVCC:I = 0x34

.field public static final STANDALONE_MSG:I = 0xa

.field public static final STICKER:I = 0x25

.field public static final TEXT:I = 0x35

.field public static final VEMOTICON:I = 0x23

.field public static final VSH:I = 0x3

.field public static final VSH_OUTSIDE_CALL:I = 0x1a

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 59

    .line 67
    const-string v57, "CPIMEXT"

    const-string v58, "DATACHANNEL"

    const-string v0, "IPCALL"

    const-string v1, "IPCALL_VIDEO"

    const-string v2, "IPCALL_VIDEO_ONLY"

    const-string v3, "VSH"

    const-string v4, "SMS"

    const-string v5, "MMTEL_AUDIO"

    const-string v6, "MMTEL_VIDEO"

    const-string v7, "CDPN"

    const-string v8, "CDMALESS"

    const-string v9, "MMTEL"

    const-string v10, "STANDALONE_MSG"

    const-string v11, "DEFERRED_CPM"

    const-string v12, "CHAT_CPM"

    const-string v13, "FT_CPM"

    const-string v14, "CALL_COMPOSER"

    const-string v15, "SHARED_MAP"

    const-string v16, "POST_CALL"

    const-string v17, "SHARED_SKETCH"

    const-string v18, "ISH"

    const-string v19, "PRESENCE_DISCOVERY"

    const-string v20, "CHAT"

    const-string v21, "SF_GROUP_CHAT"

    const-string v22, "FT"

    const-string v23, "FT_THUMBNAIL"

    const-string v24, "FT_STORE"

    const-string v25, "FT_HTTP"

    const-string v26, "VSH_OUTSIDE_CALL"

    const-string v27, "INTEGRATED_MSG"

    const-string v28, "SOCIAL_PRESENCE"

    const-string v29, "GEOLOCATION_PULL"

    const-string v30, "GEOLOCATION_PULL_FT"

    const-string v31, "GEOLOCATION_PUSH"

    const-string v32, "CLOUD_FILE"

    const-string v33, "FT_HTTP_EXTRA"

    const-string v34, "BURN_MSG"

    const-string v35, "VEMOTICON"

    const-string v36, "GROUP_MANAGEMENT"

    const-string v37, "STICKER"

    const-string v38, "FT_VIA_SMS"

    const-string v39, "GEO_VIA_SMS"

    const-string v40, "MSG_REVOKE"

    const-string v41, "CARD_MSG"

    const-string v42, "PUBLIC_MSG"

    const-string v43, "LAST_SEEN_ACTIVE"

    const-string v44, "CHATBOT_CHAT_SESSION"

    const-string v45, "CHATBOT_STANDALONE_MSG"

    const-string v46, "EXTENDED_BOT_MSG"

    const-string v47, "CANCEL_MESSAGE"

    const-string v48, "PLUG_IN"

    const-string v49, "EXTENDED_MESSAGING"

    const-string v50, "RCS_TELEPHONY_VOLTE"

    const-string v51, "RCS_TELEPHONY_CS"

    const-string v52, "SRVCC"

    const-string v53, "TEXT"

    const-string v54, "CHATBOT_ROLE"

    const-string v55, "CHATBOT_VERSION"

    const-string v56, "MMTEL_CALL_COMPOSER"

    filled-new-array/range {v0 .. v58}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FeatureTag;->names:[Ljava/lang/String;

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

    .line 69
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FeatureTag;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
