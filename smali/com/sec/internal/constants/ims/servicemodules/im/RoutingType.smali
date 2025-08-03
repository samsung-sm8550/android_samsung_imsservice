.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
.super Ljava/lang/Enum;
.source "RoutingType.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

.field public static final enum NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

.field public static final enum RECEIVED:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

.field public static final enum SENT:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 3

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->RECEIVED:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    const-string v1, "SENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    const-string v1, "RECEIVED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->RECEIVED:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 3
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 20
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 1

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 0

    .line 33
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->id:I

    return p0
.end method
