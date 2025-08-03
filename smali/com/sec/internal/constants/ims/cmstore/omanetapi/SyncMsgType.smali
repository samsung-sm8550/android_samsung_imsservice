.class public final enum Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
.super Ljava/lang/Enum;
.source "SyncMsgType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field public static final enum CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field public static final enum DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field public static final enum FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field public static final enum MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field public static final enum VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field public static final enum VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;


# instance fields
.field private final mId:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .locals 6

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v1, "MESSAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v1, "FAX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v1, "VM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v1, "CALLLOG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const-string v1, "VM_GREETINGS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 3
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->$values()[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->mId:I

    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .locals 5

    .line 21
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->values()[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 22
    iget v4, v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->mId:I

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .locals 1

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 14
    iget p0, p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->mId:I

    return p0
.end method
