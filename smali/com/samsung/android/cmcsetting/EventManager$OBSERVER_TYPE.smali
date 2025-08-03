.class final enum Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;
.super Ljava/lang/Enum;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

.field public static final enum all:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

.field public static final enum callActivation:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

.field public static final enum deviceInfo:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

.field public static final enum lineInfo:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

.field public static final enum mainActivation:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

.field public static final enum messageActivation:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

.field public static final enum networkMode:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

.field public static final enum saInfo:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

.field public static final enum sameWifiNetworkStatus:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

.field public static final enum watchActivation:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 49
    new-instance v0, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    const-string v1, "mainActivation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->mainActivation:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    new-instance v1, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    const-string v2, "messageActivation"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->messageActivation:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    new-instance v2, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    const-string v3, "callActivation"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->callActivation:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    new-instance v3, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    const-string/jumbo v4, "watchActivation"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->watchActivation:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    .line 50
    new-instance v4, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    const-string v5, "networkMode"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->networkMode:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    new-instance v5, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    const-string v6, "lineInfo"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->lineInfo:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    new-instance v6, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    const-string v7, "deviceInfo"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->deviceInfo:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    new-instance v7, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    const-string/jumbo v8, "saInfo"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->saInfo:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    new-instance v8, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    const-string/jumbo v9, "sameWifiNetworkStatus"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->sameWifiNetworkStatus:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    new-instance v9, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    const-string v10, "all"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->all:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    .line 48
    filled-new-array/range {v0 .. v9}, [Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->$VALUES:[Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;
    .locals 1

    .line 48
    const-class v0, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;
    .locals 1

    .line 48
    sget-object v0, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->$VALUES:[Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    return-object v0
.end method
