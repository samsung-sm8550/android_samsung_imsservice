.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;
.super Ljava/lang/Enum;
.source "SlmMode.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

.field public static final enum LARGE_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

.field public static final enum PAGER:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

.field public static final enum UNKOWN:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;
    .locals 3

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->UNKOWN:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->PAGER:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->LARGE_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    const-string v1, "UNKOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->UNKOWN:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    .line 5
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    const-string v1, "PAGER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->PAGER:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    .line 6
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    const-string v1, "LARGE_MESSAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->LARGE_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    .line 3
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    .line 10
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;
    .locals 1

    .line 27
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;
    .locals 1

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;
    .locals 0

    .line 23
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 18
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->id:I

    return p0
.end method
