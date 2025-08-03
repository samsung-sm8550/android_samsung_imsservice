.class public final enum Lcom/sec/internal/omanetapi/nc/data/ChannelType;
.super Ljava/lang/Enum;
.source "ChannelType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/omanetapi/nc/data/ChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/omanetapi/nc/data/ChannelType;

.field public static final enum LongPolling:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

.field public static final enum NativeChannel:Lcom/sec/internal/omanetapi/nc/data/ChannelType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/omanetapi/nc/data/ChannelType;
    .locals 2

    .line 3
    sget-object v0, Lcom/sec/internal/omanetapi/nc/data/ChannelType;->LongPolling:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    sget-object v1, Lcom/sec/internal/omanetapi/nc/data/ChannelType;->NativeChannel:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    filled-new-array {v0, v1}, [Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    const-string v1, "LongPolling"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/omanetapi/nc/data/ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/omanetapi/nc/data/ChannelType;->LongPolling:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    .line 5
    new-instance v0, Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    const-string v1, "NativeChannel"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/omanetapi/nc/data/ChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/omanetapi/nc/data/ChannelType;->NativeChannel:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    .line 3
    invoke-static {}, Lcom/sec/internal/omanetapi/nc/data/ChannelType;->$values()[Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nc/data/ChannelType;->$VALUES:[Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/omanetapi/nc/data/ChannelType;
    .locals 1

    .line 3
    const-class v0, Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/omanetapi/nc/data/ChannelType;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/omanetapi/nc/data/ChannelType;->$VALUES:[Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    invoke-virtual {v0}, [Lcom/sec/internal/omanetapi/nc/data/ChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    return-object v0
.end method
