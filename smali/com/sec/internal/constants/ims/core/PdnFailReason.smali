.class public final enum Lcom/sec/internal/constants/ims/core/PdnFailReason;
.super Ljava/lang/Enum;
.source "PdnFailReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/core/PdnFailReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum MISSING_UNKNOWN_APN:Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum NETWORK_INITIATED_DETACH_WITH_AUTO_REATTACH:Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum NETWORK_SELECTION_ONGOING:Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum NOT_DEFINED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum PDN_MAX_TIMEOUT:Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum PDN_THROTTLED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum PROTOCOL_ERRORS:Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

.field public static final enum UNKNOWN_PDP_ADDRESS_TYPE:Lcom/sec/internal/constants/ims/core/PdnFailReason;


# instance fields
.field private final mFailCause:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/core/PdnFailReason;
    .locals 13

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->NOT_DEFINED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    sget-object v1, Lcom/sec/internal/constants/ims/core/PdnFailReason;->NETWORK_SELECTION_ONGOING:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    sget-object v2, Lcom/sec/internal/constants/ims/core/PdnFailReason;->PDN_MAX_TIMEOUT:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    sget-object v3, Lcom/sec/internal/constants/ims/core/PdnFailReason;->PDN_THROTTLED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    sget-object v4, Lcom/sec/internal/constants/ims/core/PdnFailReason;->INSUFFICIENT_RESOURCES:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    sget-object v5, Lcom/sec/internal/constants/ims/core/PdnFailReason;->MISSING_UNKNOWN_APN:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    sget-object v6, Lcom/sec/internal/constants/ims/core/PdnFailReason;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    sget-object v7, Lcom/sec/internal/constants/ims/core/PdnFailReason;->ACTIVATION_REJECT_GGSN:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    sget-object v8, Lcom/sec/internal/constants/ims/core/PdnFailReason;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    sget-object v9, Lcom/sec/internal/constants/ims/core/PdnFailReason;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    sget-object v10, Lcom/sec/internal/constants/ims/core/PdnFailReason;->MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    sget-object v11, Lcom/sec/internal/constants/ims/core/PdnFailReason;->PROTOCOL_ERRORS:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    sget-object v12, Lcom/sec/internal/constants/ims/core/PdnFailReason;->NETWORK_INITIATED_DETACH_WITH_AUTO_REATTACH:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    filled-new-array/range {v0 .. v12}, [Lcom/sec/internal/constants/ims/core/PdnFailReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "NOT_DEFINED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->NOT_DEFINED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 5
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/4 v1, 0x1

    const/16 v2, -0x19

    const-string v3, "NETWORK_SELECTION_ONGOING"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->NETWORK_SELECTION_ONGOING:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 6
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/4 v1, 0x2

    const/16 v2, -0x16

    const-string v3, "PDN_MAX_TIMEOUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->PDN_MAX_TIMEOUT:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 7
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/4 v1, 0x3

    const/4 v2, -0x8

    const-string v3, "PDN_THROTTLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->PDN_THROTTLED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 8
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/4 v1, 0x4

    const/16 v2, 0x1a

    const-string v3, "INSUFFICIENT_RESOURCES"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->INSUFFICIENT_RESOURCES:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 9
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/4 v1, 0x5

    const/16 v2, 0x1b

    const-string v3, "MISSING_UNKNOWN_APN"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->MISSING_UNKNOWN_APN:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 10
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/4 v1, 0x6

    const/16 v2, 0x1c

    const-string v3, "UNKNOWN_PDP_ADDRESS_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 11
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/4 v1, 0x7

    const/16 v2, 0x1e

    const-string v3, "ACTIVATION_REJECT_GGSN"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->ACTIVATION_REJECT_GGSN:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/16 v1, 0x8

    const/16 v2, 0x20

    const-string v3, "SERVICE_OPTION_NOT_SUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 13
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/16 v1, 0x9

    const/16 v2, 0x21

    const-string v3, "SERVICE_OPTION_NOT_SUBSCRIBED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/16 v1, 0xa

    const/16 v2, 0x37

    const-string v3, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 15
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/16 v1, 0xb

    const/16 v2, 0x6f

    const-string v3, "PROTOCOL_ERRORS"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->PROTOCOL_ERRORS:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 16
    new-instance v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    const/16 v1, 0xc

    const/16 v2, 0x869

    const-string v3, "NETWORK_INITIATED_DETACH_WITH_AUTO_REATTACH"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/core/PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->NETWORK_INITIATED_DETACH_WITH_AUTO_REATTACH:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 3
    invoke-static {}, Lcom/sec/internal/constants/ims/core/PdnFailReason;->$values()[Lcom/sec/internal/constants/ims/core/PdnFailReason;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->$VALUES:[Lcom/sec/internal/constants/ims/core/PdnFailReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->mFailCause:I

    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/constants/ims/core/PdnFailReason;
    .locals 6

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->NOT_DEFINED:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    .line 26
    invoke-static {}, Lcom/sec/internal/constants/ims/core/PdnFailReason;->values()[Lcom/sec/internal/constants/ims/core/PdnFailReason;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 27
    iget v5, v4, Lcom/sec/internal/constants/ims/core/PdnFailReason;->mFailCause:I

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/core/PdnFailReason;
    .locals 1

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/core/PdnFailReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/core/PdnFailReason;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->$VALUES:[Lcom/sec/internal/constants/ims/core/PdnFailReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/core/PdnFailReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/core/PdnFailReason;

    return-object v0
.end method


# virtual methods
.method public getCause()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->mFailCause:I

    return p0
.end method
