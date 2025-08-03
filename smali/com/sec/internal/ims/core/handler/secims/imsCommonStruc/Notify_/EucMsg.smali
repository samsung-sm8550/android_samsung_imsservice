.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMsg;
.super Ljava/lang/Object;
.source "EucMsg.java"


# static fields
.field public static final NONE:B = 0x0t

.field public static final com_sec_internal_ims_core_handler_secims_imsCommonStruc_Notify__EucMessage__AckMessage:B = 0x3t

.field public static final com_sec_internal_ims_core_handler_secims_imsCommonStruc_Notify__EucMessage__NotificationMessage:B = 0x4t

.field public static final com_sec_internal_ims_core_handler_secims_imsCommonStruc_Notify__EucMessage__PersistentMessage:B = 0x1t

.field public static final com_sec_internal_ims_core_handler_secims_imsCommonStruc_Notify__EucMessage__SystemMessage:B = 0x5t

.field public static final com_sec_internal_ims_core_handler_secims_imsCommonStruc_Notify__EucMessage__VolatileMessage:B = 0x2t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    const-string v4, "com_sec_internal_ims_core_handler_secims_imsCommonStruc_Notify__EucMessage__NotificationMessage"

    const-string v5, "com_sec_internal_ims_core_handler_secims_imsCommonStruc_Notify__EucMessage__SystemMessage"

    const-string v0, "NONE"

    const-string v1, "com_sec_internal_ims_core_handler_secims_imsCommonStruc_Notify__EucMessage__PersistentMessage"

    const-string v2, "com_sec_internal_ims_core_handler_secims_imsCommonStruc_Notify__EucMessage__VolatileMessage"

    const-string v3, "com_sec_internal_ims_core_handler_secims_imsCommonStruc_Notify__EucMessage__AckMessage"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMsg;->names:[Ljava/lang/String;

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

    .line 16
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMsg;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
