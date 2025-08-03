.class public final enum Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;
.super Ljava/lang/Enum;
.source "ICmcConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

.field public static final enum None:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

.field public static final enum PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

.field public static final enum SDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;
    .locals 3

    .line 9
    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    sget-object v2, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->None:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    const-string v1, "PDevice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    .line 11
    new-instance v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    const-string v1, "SDevice"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    .line 12
    new-instance v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    const-string v1, "None"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->None:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    .line 9
    invoke-static {}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->$values()[Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->$VALUES:[Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;
    .locals 1

    .line 9
    const-class v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;
    .locals 1

    .line 9
    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->$VALUES:[Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    invoke-virtual {v0}, [Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    return-object v0
.end method
