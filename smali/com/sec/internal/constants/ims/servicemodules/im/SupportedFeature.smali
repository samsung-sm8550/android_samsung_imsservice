.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;
.super Ljava/lang/Enum;
.source "SupportedFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum GEOLOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum GROUP_SESSION_MANAGEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum HTTP_FT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum IMDN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum ISCOMPOSING_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

.field public static final enum TEXT_PLAIN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;
    .locals 7

    .line 19
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->TEXT_PLAIN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->ISCOMPOSING_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->IMDN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->HTTP_FT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->GEOLOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->GROUP_SESSION_MANAGEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "TEXT_PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->TEXT_PLAIN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 29
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "ISCOMPOSING_TYPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->ISCOMPOSING_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 34
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "IMDN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->IMDN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 39
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "HTTP_FT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->HTTP_FT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 44
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "GEOLOCATION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->GEOLOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 49
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "MULTIMEDIA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 54
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "GROUP_SESSION_MANAGEMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->GROUP_SESSION_MANAGEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    .line 19
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    return-object v0
.end method
