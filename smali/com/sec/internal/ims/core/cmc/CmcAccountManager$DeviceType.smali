.class public final enum Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;
.super Ljava/lang/Enum;
.source "CmcAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

.field public static final enum PD:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

.field public static final enum SD:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;
    .locals 2

    .line 102
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->PD:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->SD:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    filled-new-array {v0, v1}, [Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 103
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    const-string v1, "PD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->PD:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    const-string v1, "SD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->SD:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->$values()[Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static isPD(Ljava/lang/String;)Z
    .locals 1

    .line 105
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->PD:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static isSD(Ljava/lang/String;)Z
    .locals 1

    .line 108
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->SD:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;
    .locals 1

    .line 102
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;
    .locals 1

    .line 102
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;

    return-object v0
.end method
