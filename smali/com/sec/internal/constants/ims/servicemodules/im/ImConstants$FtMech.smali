.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;
.super Ljava/lang/Enum;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

.field public static final enum HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

.field public static final enum MSRP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;
    .locals 2

    .line 28
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->MSRP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    const-string v1, "MSRP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->MSRP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    const-string v1, "HTTP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    .line 28
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;
    .locals 1

    .line 28
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;
    .locals 1

    .line 28
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    return-object v0
.end method
