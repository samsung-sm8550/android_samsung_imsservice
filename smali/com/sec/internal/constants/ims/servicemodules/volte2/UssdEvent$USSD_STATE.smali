.class public final enum Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
.super Ljava/lang/Enum;
.source "UssdEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

.field public static final enum NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

.field public static final enum USSD_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

.field public static final enum USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

.field public static final enum USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
    .locals 4

    .line 13
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    .line 15
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    const-string v1, "USSD_INDICATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    .line 16
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    const-string v1, "USSD_RESPONSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    const-string v1, "USSD_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    .line 13
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->$values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
    .locals 1

    .line 13
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
    .locals 1

    .line 13
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    return-object v0
.end method
