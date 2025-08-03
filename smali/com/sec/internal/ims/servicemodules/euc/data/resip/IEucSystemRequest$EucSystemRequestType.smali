.class public final enum Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;
.super Ljava/lang/Enum;
.source "IEucSystemRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

.field public static final enum RECONFIGURE:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;
    .locals 1

    .line 22
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;->RECONFIGURE:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    filled-new-array {v0}, [Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    const-string v1, "RECONFIGURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;->RECONFIGURE:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    .line 22
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;->$values()[Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;
    .locals 1

    .line 22
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;

    return-object v0
.end method
