.class public final enum Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;
.super Ljava/lang/Enum;
.source "CmcInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum ACCESS_TOKEN:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum ACTIVATION:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum CALL_FORKING_ENABLED:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum DEVICE_ID:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum DEVICE_TYPE:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum DUAL_CMC:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum EMERGENCY_CALL_SUPPORTED:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum HAS_SD:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum LINE_ID:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum LINE_IMPU:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum LINE_OWNER_DEVICE_ID:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum LINE_SLOT_INDEX:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum NETWORK_PREF:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum OOBE:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum PCSCF_ADDR_LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum SAME_WIFI_ONLY:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

.field public static final enum SA_SERVER_URL:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;


# instance fields
.field private mDataType:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;
    .locals 17

    .line 45
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->ACTIVATION:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->LINE_SLOT_INDEX:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->DEVICE_TYPE:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->DEVICE_ID:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->ACCESS_TOKEN:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v5, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->LINE_ID:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v6, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->LINE_OWNER_DEVICE_ID:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v7, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->LINE_IMPU:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v8, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->SA_SERVER_URL:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v9, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->PCSCF_ADDR_LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v10, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->CALL_FORKING_ENABLED:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v11, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->HAS_SD:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v12, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->NETWORK_PREF:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v13, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->OOBE:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v14, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->EMERGENCY_CALL_SUPPORTED:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v15, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->SAME_WIFI_ONLY:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v16, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->DUAL_CMC:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    filled-new-array/range {v0 .. v16}, [Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmDataType(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->mDataType:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 46
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v2, "ACTIVATION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->ACTIVATION:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 47
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v3, "LINE_SLOT_INDEX"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->LINE_SLOT_INDEX:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 48
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v4, "DEVICE_TYPE"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v5, v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->DEVICE_TYPE:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 49
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v4, "DEVICE_ID"

    const/4 v5, 0x3

    invoke-direct {v0, v4, v5, v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->DEVICE_ID:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 50
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v4, "ACCESS_TOKEN"

    const/4 v5, 0x4

    invoke-direct {v0, v4, v5, v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->ACCESS_TOKEN:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 51
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v4, "LINE_ID"

    const/4 v5, 0x5

    invoke-direct {v0, v4, v5, v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->LINE_ID:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 52
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v4, "LINE_OWNER_DEVICE_ID"

    const/4 v5, 0x6

    invoke-direct {v0, v4, v5, v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->LINE_OWNER_DEVICE_ID:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 53
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v4, "LINE_IMPU"

    const/4 v5, 0x7

    invoke-direct {v0, v4, v5, v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->LINE_IMPU:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 54
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v4, "SA_SERVER_URL"

    const/16 v5, 0x8

    invoke-direct {v0, v4, v5, v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->SA_SERVER_URL:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 55
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v5, "PCSCF_ADDR_LIST"

    invoke-direct {v0, v5, v3, v4}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->PCSCF_ADDR_LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 56
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v3, "CALL_FORKING_ENABLED"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->CALL_FORKING_ENABLED:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 57
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v3, "HAS_SD"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->HAS_SD:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 58
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v3, "NETWORK_PREF"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->NETWORK_PREF:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 59
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v2, "OOBE"

    const/16 v3, 0xd

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->OOBE:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 60
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v2, "EMERGENCY_CALL_SUPPORTED"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->EMERGENCY_CALL_SUPPORTED:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 61
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v2, "SAME_WIFI_ONLY"

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->SAME_WIFI_ONLY:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 62
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    const-string v2, "DUAL_CMC"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->DUAL_CMC:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 45
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->$values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcInfo$DataType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->mDataType:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;
    .locals 1

    .line 45
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;
    .locals 1

    .line 45
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    return-object v0
.end method


# virtual methods
.method public isDumpPrintAvailable()Z
    .locals 1

    .line 72
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->DEVICE_TYPE:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    if-eq p0, v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->mDataType:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
