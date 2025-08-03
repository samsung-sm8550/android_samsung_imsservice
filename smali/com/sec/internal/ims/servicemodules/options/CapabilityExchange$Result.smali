.class final enum Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;
.super Ljava/lang/Enum;
.source "CapabilityExchange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

.field public static final enum FALSE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

.field public static final enum PROCEED:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

.field public static final enum TRUE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;
    .locals 3

    .line 47
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->FALSE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->TRUE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->PROCEED:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    const-string v1, "FALSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->FALSE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    const-string v1, "TRUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->TRUE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    const-string v1, "PROCEED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->PROCEED:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->$values()[Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->$VALUES:[Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;
    .locals 1

    .line 47
    const-class v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;
    .locals 1

    .line 47
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->$VALUES:[Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    return-object v0
.end method
