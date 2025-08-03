.class public final enum Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;
.super Ljava/lang/Enum;
.source "XqEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

.field public static final enum STRING:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

.field public static final enum UCHAR:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

.field public static final enum UINT32:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

.field public static final enum UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

.field public static final enum USHORT:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;
    .locals 5

    .line 29
    sget-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    sget-object v1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UCHAR:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    sget-object v2, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->USHORT:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    sget-object v3, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UINT32:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    sget-object v4, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->STRING:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    const-string v1, "UCHAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UCHAR:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    const-string v1, "USHORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->USHORT:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    const-string v1, "UINT32"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UINT32:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    const-string v1, "STRING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->STRING:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    .line 29
    invoke-static {}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->$values()[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->$VALUES:[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;
    .locals 1

    .line 29
    const-class v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;
    .locals 1

    .line 29
    sget-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->$VALUES:[Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    return-object v0
.end method
