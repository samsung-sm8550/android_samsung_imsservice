.class final enum Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;
.super Ljava/lang/Enum;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

.field public static final enum NET_INIT_NOTIFY:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

.field public static final enum NET_INIT_REQUEST:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

.field public static final enum RESPONSE_TO_USER_INIT:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;
    .locals 3

    .line 261
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->RESPONSE_TO_USER_INIT:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->NET_INIT_REQUEST:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->NET_INIT_NOTIFY:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 262
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    const-string v1, "RESPONSE_TO_USER_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->RESPONSE_TO_USER_INIT:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    .line 263
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    const-string v1, "NET_INIT_REQUEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->NET_INIT_REQUEST:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    .line 264
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    const-string v1, "NET_INIT_NOTIFY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->NET_INIT_NOTIFY:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    .line 261
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->$values()[Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->$VALUES:[Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;
    .locals 1

    .line 261
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;
    .locals 1

    .line 261
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->$VALUES:[Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    return-object v0
.end method
