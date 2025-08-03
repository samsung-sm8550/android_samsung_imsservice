.class final enum Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;
.super Ljava/lang/Enum;
.source "ImsGeneralEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

.field public static final enum CALL_EVENT:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

.field public static final enum CALL_PROFILE_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;
    .locals 3

    .line 16
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->CALL_PROFILE_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->CALL_EVENT:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    const-string v1, "CALL_PROFILE_CHANGED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->CALL_PROFILE_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    .line 19
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    const-string v1, "CALL_EVENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->CALL_EVENT:Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    .line 16
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->$values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;
    .locals 1

    .line 16
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/volte2/ImsGeneralEvent$NotifyType;

    return-object v0
.end method
