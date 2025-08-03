.class public final enum Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
.super Ljava/lang/Enum;
.source "EucType.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

.field public static final enum ACKNOWLEDGEMENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

.field public static final enum EULA:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

.field public static final enum NOTIFICATION:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

.field public static final enum PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

.field public static final enum VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .locals 5

    .line 19
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->NOTIFICATION:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->ACKNOWLEDGEMENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->EULA:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    const-string v1, "PERSISTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 29
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    const-string v1, "VOLATILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    const-string v1, "NOTIFICATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->NOTIFICATION:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 39
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    const-string v1, "ACKNOWLEDGEMENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->ACKNOWLEDGEMENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 44
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    const-string v1, "EULA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->EULA:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 19
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->$values()[Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 48
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .locals 0

    .line 62
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getFromId(I)Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->id:I

    return p0
.end method
