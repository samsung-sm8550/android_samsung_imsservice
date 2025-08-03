.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;
.super Ljava/lang/Enum;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

.field public static final enum ADVERTISEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

.field public static final enum NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

.field public static final enum PAYMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

.field public static final enum PREMIUM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

.field public static final enum SUBSCRIPTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;


# instance fields
.field private trafficType:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;
    .locals 6

    .line 295
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->ADVERTISEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->PAYMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->PREMIUM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->SUBSCRIPTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 296
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 297
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    const/4 v1, 0x1

    const-string v2, "advertisement"

    const-string v3, "ADVERTISEMENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->ADVERTISEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 298
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    const/4 v1, 0x2

    const-string/jumbo v2, "payment"

    const-string v3, "PAYMENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->PAYMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 299
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    const/4 v1, 0x3

    const-string/jumbo v2, "premium"

    const-string v3, "PREMIUM"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->PREMIUM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 300
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    const/4 v1, 0x4

    const-string/jumbo v2, "subscription"

    const-string v3, "SUBSCRIPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->SUBSCRIPTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 301
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    const/4 v1, 0x5

    const-string/jumbo v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 295
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 305
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 306
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->trafficType:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;
    .locals 5

    if-nez p0, :cond_0

    .line 311
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    return-object p0

    .line 314
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 315
    iget-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->trafficType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;
    .locals 1

    .line 295
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;
    .locals 1

    .line 295
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    return-object v0
.end method
