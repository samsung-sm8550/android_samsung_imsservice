.class public final enum Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;
.super Ljava/lang/Enum;
.source "VshViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

.field public static final enum LOCAL:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

.field public static final enum REMOTE:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;


# instance fields
.field private final mType:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;
    .locals 2

    .line 20
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->LOCAL:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->REMOTE:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    filled-new-array {v0, v1}, [Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->LOCAL:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    .line 23
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    const-string v1, "REMOTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->REMOTE:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    .line 20
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->$values()[Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;
    .locals 1

    .line 20
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    return-object v0
.end method
