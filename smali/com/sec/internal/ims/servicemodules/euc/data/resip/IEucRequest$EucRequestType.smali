.class public final enum Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;
.super Ljava/lang/Enum;
.source "IEucRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

.field public static final enum PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

.field public static final enum VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;
    .locals 2

    .line 26
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    filled-new-array {v0, v1}, [Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    const-string v1, "VOLATILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    .line 37
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    const-string v1, "PERSISTENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    .line 26
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;->$values()[Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;
    .locals 1

    .line 26
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;
    .locals 1

    .line 26
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    return-object v0
.end method
