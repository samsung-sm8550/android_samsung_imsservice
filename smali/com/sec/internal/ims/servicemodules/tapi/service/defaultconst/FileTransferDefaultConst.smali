.class public Lcom/sec/internal/ims/servicemodules/tapi/service/defaultconst/FileTransferDefaultConst;
.super Ljava/lang/Object;
.source "FileTransferDefaultConst.java"


# static fields
.field public static final DEFALUT_AUTO_ACCEPT_MODE:Z = false

.field public static final DEFALUT_AUTO_ACCEPT_MODE_CHANGEABLE:Z = false

.field public static final DEFALUT_AUTO_ACCEPT_MODE_IN_ROAMING:Z = false

.field public static final DEFALUT_CAN_PAUSE_TRANSFER:Z = false

.field public static final DEFALUT_CAN_RESEND_TRANSFER:Z = true

.field public static final DEFALUT_GROUP_FILE_TRANSFER:Z = true

.field public static final DEFALUT_IMAGERESIZEOPTION:Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;

.field public static final DEFALUT_MAX_FILE_TRANSFERS:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->ALWAYS_ASK:Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/defaultconst/FileTransferDefaultConst;->DEFALUT_IMAGERESIZEOPTION:Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
