.class public final enum Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;
.super Ljava/lang/Enum;
.source "EcholocateEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

.field public static final enum rtpMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

.field public static final enum signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;
    .locals 2

    .line 4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->rtpMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    filled-new-array {v0, v1}, [Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    const-string/jumbo v1, "signalMsg"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    const-string/jumbo v1, "rtpMsg"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->rtpMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    .line 4
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->$values()[Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;
    .locals 1

    .line 4
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;
    .locals 1

    .line 4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    return-object v0
.end method
