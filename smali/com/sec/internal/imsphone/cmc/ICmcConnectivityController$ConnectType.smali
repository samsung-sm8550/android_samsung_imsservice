.class public final enum Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;
.super Ljava/lang/Enum;
.source "ICmcConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

.field public static final enum Internet:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

.field public static final enum Wifi:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

.field public static final enum Wifi_HS:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;
    .locals 3

    .line 4
    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    sget-object v1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    sget-object v2, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Internet:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    const-string v1, "Wifi"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    .line 6
    new-instance v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    const-string v1, "Wifi_HS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    .line 7
    new-instance v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    const-string v1, "Internet"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Internet:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    .line 4
    invoke-static {}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->$values()[Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->$VALUES:[Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;
    .locals 1

    .line 4
    const-class v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;
    .locals 1

    .line 4
    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->$VALUES:[Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    invoke-virtual {v0}, [Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    return-object v0
.end method
