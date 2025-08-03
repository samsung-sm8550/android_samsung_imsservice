.class public final enum Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
.super Ljava/lang/Enum;
.source "CapabilityConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum POLLING_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum UNCLASSIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum USER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .locals 13

    .line 5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->POLLING_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->UNCLASSIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    filled-new-array/range {v0 .. v12}, [Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 7
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "POLLING_SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->POLLING_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 8
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "FAILURE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 9
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "USER_NOT_FOUND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 10
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "DOES_NOT_EXIST_ANYWHERE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 11
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "USER_UNAVAILABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "FORBIDDEN_403"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 13
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "REQUEST_TIMED_OUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "INVALID_DATA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 15
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 16
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "USER_AVAILABLE_OFFLINE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "UNCLASSIFIED_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->UNCLASSIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "USER_NOT_REGISTERED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 5
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->$values()[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .locals 1

    .line 5
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .locals 1

    .line 5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object v0
.end method


# virtual methods
.method public varargs isOneOf([Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)Z
    .locals 4

    .line 21
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
