.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
.super Ljava/lang/Enum;
.source "ChatData.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field public static final enum ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field public static final enum CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field public static final enum CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field public static final enum CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field public static final enum INACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field public static final enum NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .locals 6

    .line 349
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->INACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 353
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 358
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 363
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const-string v1, "INACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->INACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 368
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const-string v1, "CLOSED_BY_USER"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 373
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const-string v1, "CLOSED_INVOLUNTARILY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 378
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const-string v1, "CLOSED_VOLUNTARILY"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 349
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 380
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 384
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 385
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .locals 2

    .line 399
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 401
    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 403
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .locals 1

    .line 349
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .locals 1

    .line 349
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .locals 0

    .line 395
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 349
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 390
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->id:I

    return p0
.end method
