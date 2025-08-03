.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
.super Ljava/lang/Enum;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum HTTP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .locals 14

    .line 45
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->HTTP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    filled-new-array/range {v0 .. v13}, [Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 47
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 48
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "SIP_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 49
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "MSRP_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 50
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "HTTP_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->HTTP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 51
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "ENGINE_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 52
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "SESSION_RELEASE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 53
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 54
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "SESSION_RSRC_UNAVAILABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 55
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "REMOTE_PARTY_CANCELED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 56
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "DEVICE_UNREGISTERED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 57
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "SIP_PROVISIONAL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 58
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 59
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "DEDICATED_BEARER_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 45
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .locals 1

    .line 45
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .locals 1

    .line 45
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    return-object v0
.end method
