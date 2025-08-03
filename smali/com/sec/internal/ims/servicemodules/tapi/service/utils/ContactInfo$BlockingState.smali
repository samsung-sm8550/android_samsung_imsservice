.class public final enum Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;
.super Ljava/lang/Enum;
.source "ContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

.field public static final enum BLOCKED:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

.field public static final enum NOT_BLOCKED:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;
    .locals 2

    .line 22
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->NOT_BLOCKED:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->BLOCKED:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    const-string v1, "NOT_BLOCKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->NOT_BLOCKED:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    .line 30
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    const-string v1, "BLOCKED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->BLOCKED:Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    .line 22
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->$values()[Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->mValueToEnum:Landroid/util/SparseArray;

    .line 40
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->values()[Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 41
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;
    .locals 1

    .line 22
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo$BlockingState;->mValue:I

    return p0
.end method
