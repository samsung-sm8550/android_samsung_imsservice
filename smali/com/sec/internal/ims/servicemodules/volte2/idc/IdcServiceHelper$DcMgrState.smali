.class final enum Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;
.super Ljava/lang/Enum;
.source "IdcServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

.field public static final enum IDLE:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

.field public static final enum REQUESTING:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

.field public static final enum SERVICE_CONNECTED:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

.field public static final enum SERVICE_CONNECTING:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;
    .locals 4

    .line 40
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->IDLE:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->SERVICE_CONNECTING:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->REQUESTING:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->IDLE:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    const-string v1, "SERVICE_CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->SERVICE_CONNECTING:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    const-string v1, "SERVICE_CONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    const-string v1, "REQUESTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->REQUESTING:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    .line 40
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->$values()[Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;
    .locals 1

    .line 40
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;
    .locals 1

    .line 40
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    return-object v0
.end method
