.class public final enum Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
.super Ljava/lang/Enum;
.source "VshOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

.field public static final enum FLIPPED_LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

.field public static final enum LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

.field public static final enum PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

.field public static final enum REVERSE_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;


# instance fields
.field private final mAngle:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    .locals 4

    .line 20
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->FLIPPED_LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->REVERSE_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 23
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    const/4 v1, 0x1

    const/16 v2, 0x5a

    const-string v3, "PORTRAIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 24
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    const/4 v1, 0x2

    const/16 v2, 0xb4

    const-string v3, "FLIPPED_LANDSCAPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->FLIPPED_LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 25
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    const/4 v1, 0x3

    const/16 v2, 0x10e

    const-string v3, "REVERSE_PORTRAIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->REVERSE_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 20
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->$values()[Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->mAngle:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    .locals 1

    .line 20
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-object v0
.end method
