.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;
.super Ljava/lang/Enum;
.source "StartImSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

.field public static final enum NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;
    .locals 1

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    filled-new-array {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    .line 24
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;
    .locals 1

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    return-object v0
.end method
