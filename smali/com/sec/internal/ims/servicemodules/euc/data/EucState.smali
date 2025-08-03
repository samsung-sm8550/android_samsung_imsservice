.class public final enum Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
.super Ljava/lang/Enum;
.source "EucState.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum ACCEPTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum DISMISSED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum FAILED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum REJECTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum TIMED_OUT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .locals 8

    .line 17
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->DISMISSED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->TIMED_OUT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->FAILED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    filled-new-array/range {v0 .. v7}, [Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "ACCEPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 27
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "REJECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 32
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "ACCEPTED_NOT_SENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 37
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "REJECTED_NOT_SENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 42
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "DISMISSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->DISMISSED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 47
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "TIMED_OUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->TIMED_OUT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 52
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->FAILED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 58
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "NONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 17
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->$values()[Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 62
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .locals 1

    .line 17
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .locals 1

    .line 17
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .locals 0

    .line 76
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getFromId(I)Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->id:I

    return p0
.end method
