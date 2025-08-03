.class public final Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract;
.super Ljava/lang/Object;
.source "CloudMessageProviderContract.java"


# static fields
.field public static final ALL_MMSPDU:I = 0x20

.field public static final ALL_MMSPDU_SLOT2:I = 0x3d

.field public static final ALL_SMS:I = 0x1f

.field public static final ALL_SMS_SLOT2:I = 0x3c

.field public static final AMBS_VERSION:I = 0x62

.field public static final CMS_INTERFACE_VERSION:I = 0x61

.field public static final CONTENTPRDR_ALL_MMSPDUMESSAGE:Ljava/lang/String; = "allmmspdumessage"

.field public static final CONTENTPRDR_ALL_SMSMESSAGES:Ljava/lang/String; = "allsmsmessages"

.field public static final CONTENTPRDR_AMBSFEATURE_VERSION:Ljava/lang/String; = "ambs_feature_ver"

.field public static final CONTENTPRDR_CMSFEATURE_VERSION:Ljava/lang/String; = "cms_feature_ver"

.field public static final CONTENTPRDR_FETCH_MCS_STATUS:Ljava/lang/String; = "userdebugstatus"

.field public static final CONTENTPRDR_LATESTMESSAGE:Ljava/lang/String; = "latestmessage"

.field public static final CONTENTPRDR_MIGRATE_SUCCESS:Ljava/lang/String; = "migrate_success"

.field public static final CONTENTPRDR_MMSADDRMESSAGES:Ljava/lang/String; = "mmsaddrmessages"

.field public static final CONTENTPRDR_MMSPARTMESSAGES_PARTID:Ljava/lang/String; = "mmspartmessages_partid"

.field public static final CONTENTPRDR_MMSPARTMESSAGES_PDUID:Ljava/lang/String; = "mmspartmessages"

.field public static final CONTENTPRDR_MMSPDUMESSAGE:Ljava/lang/String; = "mmspdumessage"

.field public static final CONTENTPRDR_MULTILINESTATUS:Ljava/lang/String; = "multilinestatus"

.field public static final CONTENTPRDR_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final CONTENTPRDR_NOTIFICATION_IMDN:Ljava/lang/String; = "notificationimdn"

.field public static final CONTENTPRDR_PENDING_MMSPDUMESSAGE:Ljava/lang/String; = "pendingmmspdumessage"

.field public static final CONTENTPRDR_PENDING_RCSCHATMESSAGE:Ljava/lang/String; = "pendingrcschatmessage"

.field public static final CONTENTPRDR_PENDING_RCSFTMESSAGE:Ljava/lang/String; = "pendingrcsftmessage"

.field public static final CONTENTPRDR_PENDING_SMSMESSAGES:Ljava/lang/String; = "pendingsmsmessages"

.field public static final CONTENTPRDR_PENDING_VVMMESSAGES:Ljava/lang/String; = "pendingvvmmessages"

.field public static final CONTENTPRDR_PREF_MAX_SMALL_FILE_SIZE:Ljava/lang/String; = "max_small_file_size"

.field public static final CONTENTPRDR_RCSCHATMESSAGE:Ljava/lang/String; = "rcschatmessage"

.field public static final CONTENTPRDR_RCSFTMESSAGE:Ljava/lang/String; = "rcsftmessage"

.field public static final CONTENTPRDR_RCSMESSAGEIMDN:Ljava/lang/String; = "rcsmessageimdn"

.field public static final CONTENTPRDR_RCSMESSAGES:Ljava/lang/String; = "rcsmessages"

.field public static final CONTENTPRDR_RCSPARTICIPANTS:Ljava/lang/String; = "rcsparticipants"

.field public static final CONTENTPRDR_RCSSESSION:Ljava/lang/String; = "rcssession"

.field public static final CONTENTPRDR_SMSMESSAGES:Ljava/lang/String; = "smsmessages"

.field public static final CONTENTPRDR_SUMMARYTABLE:Ljava/lang/String; = "summarytable"

.field public static final CONTENTPRDR_USER_DEBUG_FLAG:Ljava/lang/String; = "userdebugflag"

.field public static final CONTENTPRDR_USER_OPT_IN_STATUS:Ljava/lang/String; = "useroptinflag"

.field public static final CONTENTPRDR_VVMGREETING:Ljava/lang/String; = "vvmgreeting"

.field public static final CONTENTPRDR_VVMMESSAGES:Ljava/lang/String; = "vvmmessages"

.field public static final CONTENTPRDR_VVMPIN:Ljava/lang/String; = "vvmpin"

.field public static final CONTENTPRDR_VVMPROFILE:Ljava/lang/String; = "vvmprofile"

.field public static final CONTENTPRDR_VVMQUOTA:Ljava/lang/String; = "vvmquota"

.field public static final INIT_SYNC_STATUS_UPDATE:I = 0x4a

.field public static final LATEST_MESSAGE:I = 0x21

.field public static final LATEST_MESSAGE_SLOT2:I = 0x3e

.field public static final MAX_ARR_SIZE:I = 0x2

.field public static final MIGRATE_SUCCESS:I = 0x23

.field public static final MMS_ADDR_MESSAGES:I = 0x5

.field public static final MMS_ADDR_MESSAGES_SLOT2:I = 0x2d

.field public static final MMS_PART_ID:I = 0x8

.field public static final MMS_PART_ID_SLOT2:I = 0x30

.field public static final MMS_PART_MESSAGES:I = 0x6

.field public static final MMS_PART_MESSAGES_SLOT2:I = 0x2e

.field public static final MMS_PDU_MESSAGES:I = 0x4

.field public static final MMS_PDU_MESSAGES_SLOT2:I = 0x2c

.field public static final MULTI_LINE_STATUS:I = 0x17

.field public static final MULTI_LINE_STATUS_SLOT2:I = 0x47

.field public static final NONE:I = 0x0

.field public static final OPT_IN_STATUS:I = 0x25

.field public static final OPT_IN_STATUS_SLOT2:I = 0x40

.field public static final PENDING_CHAT:I = 0x1a

.field public static final PENDING_CHAT_SLOT2:I = 0x3a

.field public static final PENDING_FT:I = 0x1b

.field public static final PENDING_FT_SLOT2:I = 0x3b

.field public static final PENDING_MMS:I = 0x19

.field public static final PENDING_MMS_SLOT2:I = 0x39

.field public static final PENDING_SMS:I = 0x18

.field public static final PENDING_SMS_SLOT2:I = 0x38

.field public static final PENDING_VVM:I = 0x1c

.field public static final PENDING_VVM_SLOT2:I = 0x46

.field public static final PREF_MAX_SMALL_FILE_SIZE:I = 0x28

.field public static final PREF_MAX_SMALL_FILE_SIZE_SLOT2:I = 0x49

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.cmstore"

.field public static final RCS_CONFERENCE_INFO:I = 0x26

.field public static final RCS_GROUP_STATE:I = 0x22

.field public static final RCS_GROUP_STATE_SLOT2:I = 0x3f

.field public static final RCS_MESSAGES:I = 0x1

.field public static final RCS_MESSAGES_CHAT:I = 0xb

.field public static final RCS_MESSAGES_CHAT_SLOT2:I = 0x33

.field public static final RCS_MESSAGES_FT:I = 0xc

.field public static final RCS_MESSAGES_FT_SLOT2:I = 0x34

.field public static final RCS_MESSAGES_IMDN:I = 0xd

.field public static final RCS_MESSAGES_IMDN_SLOT2:I = 0x35

.field public static final RCS_MESSAGES_IMDN_USEIMDNID:I = 0x27

.field public static final RCS_MESSAGES_IMDN_USEIMDNID_SLOT2:I = 0x48

.field public static final RCS_MESSAGES_QUERY_USEIMDN:I = 0xf

.field public static final RCS_MESSAGES_QUERY_USEIMDN_SLOT2:I = 0x37

.field public static final RCS_MESSAGES_SLM:I = 0xe

.field public static final RCS_MESSAGES_SLM_SLOT2:I = 0x36

.field public static final RCS_MESSAGES_SLOT2:I = 0x29

.field public static final RCS_MESSAGE_ID:I = 0x9

.field public static final RCS_MESSAGE_ID_SLOT2:I = 0x31

.field public static final RCS_PARTICIPANT:I = 0x2

.field public static final RCS_PARTICIPANT_SLOT2:I = 0x2a

.field public static final RCS_SESSION:I = 0xa

.field public static final RCS_SESSION_SLOT2:I = 0x32

.field public static final SMS_MESSAGES:I = 0x3

.field public static final SMS_MESSAGES_SLOT2:I = 0x2b

.field public static final SUMMARY_TABLE:I = 0x7

.field public static final SUMMARY_TABLE_SLOT2:I = 0x2f

.field public static final USER_DEBUG_FLAG:I = 0x63

.field public static final USER_DEBUG_STATUS:I = 0x64

.field public static final VVM_GREETING:I = 0x12

.field public static final VVM_GREETING_SLOT2:I = 0x42

.field public static final VVM_MESSAGES:I = 0x11

.field public static final VVM_MESSAGES_SLOT2:I = 0x41

.field public static final VVM_PIN:I = 0x13

.field public static final VVM_PIN_SLOT2:I = 0x43

.field public static final VVM_PROFILE:I = 0x14

.field public static final VVM_PROFILE_SLOT2:I = 0x44

.field public static final VVM_QUOTA:I = 0x24

.field public static final VVM_QUOTA_SLOT2:I = 0x45


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
