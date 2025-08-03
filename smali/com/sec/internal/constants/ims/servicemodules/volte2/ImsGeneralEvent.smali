.class public final enum Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;
.super Ljava/lang/Enum;
.source "ImsGeneralEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

.field public static final enum IDC_ARCALL_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

.field public static final enum IDC_ARCALL_STOP:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

.field public static final enum IDC_SCREEN_SHARE_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

.field public static final enum IDC_SCREEN_SHARE_STOP:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

.field public static final enum NOTIFY_DSDA_VIDEO_CAPA:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

.field public static final enum NOTIFY_QUANTUM_ENCRYPTION_STATUS:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

.field public static final enum VCID_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;


# instance fields
.field private mName:Ljava/lang/String;

.field private mNotifyType:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;
    .locals 8

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->VCID_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->IDC_SCREEN_SHARE_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->IDC_SCREEN_SHARE_STOP:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->IDC_ARCALL_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->IDC_ARCALL_STOP:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->NOTIFY_QUANTUM_ENCRYPTION_STATUS:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->NOTIFY_DSDA_VIDEO_CAPA:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    filled-new-array/range {v0 .. v7}, [Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    const-string v1, ""

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    .line 6
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->CALL_PROFILE_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    const-string v2, "VCID_FAILURE"

    const/4 v3, 0x1

    const-string v4, "VCIDGeneralFailure"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->VCID_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    .line 8
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    const/4 v2, 0x2

    const-string v3, "IdcScreenShareStart"

    const-string v4, "IDC_SCREEN_SHARE_START"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->IDC_SCREEN_SHARE_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    .line 9
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    const/4 v2, 0x3

    const-string v3, "IdcScreenShareStop"

    const-string v4, "IDC_SCREEN_SHARE_STOP"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->IDC_SCREEN_SHARE_STOP:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    .line 10
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    const/4 v2, 0x4

    const-string v3, "IdcArCallStart"

    const-string v4, "IDC_ARCALL_START"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->IDC_ARCALL_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    .line 11
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    const/4 v2, 0x5

    const-string v3, "IdcArCallStop"

    const-string v4, "IDC_ARCALL_STOP"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->IDC_ARCALL_STOP:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    .line 13
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    const/4 v2, 0x6

    const-string v3, "NotifyQuantumEncryptionStatus"

    const-string v4, "NOTIFY_QUANTUM_ENCRYPTION_STATUS"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->NOTIFY_QUANTUM_ENCRYPTION_STATUS:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    const/4 v2, 0x7

    const-string v3, "NotifyDSDAVideoCapa"

    const-string v4, "NOTIFY_DSDA_VIDEO_CAPA"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->NOTIFY_DSDA_VIDEO_CAPA:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    .line 3
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->$values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->mName:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->mNotifyType:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    return-void
.end method

.method public static isOnlyCallProfileChanged(Ljava/lang/String;)Z
    .locals 6

    .line 39
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 40
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->getNotifyType()Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->CALL_PROFILE_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    if-ne v4, v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;
    .locals 1

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNotifyType()Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent;->mNotifyType:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    return-object p0
.end method
