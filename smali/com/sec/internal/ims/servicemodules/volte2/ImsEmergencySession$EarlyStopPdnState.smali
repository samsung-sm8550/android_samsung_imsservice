.class final enum Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;
.super Ljava/lang/Enum;
.source "ImsEmergencySession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

.field public static final enum DELAYED_CALL_END:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

.field public static final enum EARLY_STOP:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

.field public static final enum NO_RESPONSE:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;
    .locals 4

    .line 63
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;->NONE:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;->NO_RESPONSE:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;->EARLY_STOP:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;->DELAYED_CALL_END:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;->NONE:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    const-string v1, "NO_RESPONSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;->NO_RESPONSE:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    const-string v1, "EARLY_STOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;->EARLY_STOP:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    const-string v1, "DELAYED_CALL_END"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;->DELAYED_CALL_END:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    .line 63
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;->$values()[Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;
    .locals 1

    .line 63
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;
    .locals 1

    .line 63
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EarlyStopPdnState;

    return-object v0
.end method
