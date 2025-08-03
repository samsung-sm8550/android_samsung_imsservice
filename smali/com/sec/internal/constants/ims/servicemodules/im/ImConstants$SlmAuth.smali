.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;
.super Ljava/lang/Enum;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

.field public static final enum DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

.field public static final enum ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

.field public static final enum RECEIVING_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;
    .locals 3

    .line 36
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->RECEIVING_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    const-string v1, "ENABLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    const-string v1, "RECEIVING_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->RECEIVING_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    .line 36
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;
    .locals 1

    .line 36
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;
    .locals 1

    .line 36
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    return-object v0
.end method
