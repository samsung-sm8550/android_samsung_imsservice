.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
.super Ljava/lang/Enum;
.source "MsrpResponse.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_200_SUCCESSFUL_TRANSACTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_400_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_403_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_408_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_413_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_415_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_423_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_481_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_501_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_503_OUT_OF_SERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_506_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_UNKNOWN_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 12

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_200_SUCCESSFUL_TRANSACTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_400_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_403_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_408_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_413_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_415_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_423_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_481_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_501_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_503_OUT_OF_SERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_506_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_UNKNOWN_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    filled-new-array/range {v0 .. v11}, [Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const-string v3, "MSRP_200_SUCCESSFUL_TRANSACTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_200_SUCCESSFUL_TRANSACTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 5
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/4 v1, 0x1

    const/16 v2, 0x190

    const-string v3, "MSRP_400_REQUEST_UNINTELLIGIBLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_400_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 6
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/4 v1, 0x2

    const/16 v2, 0x193

    const-string v3, "MSRP_403_ACTION_NOT_ALLOWED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_403_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 7
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/4 v1, 0x3

    const/16 v2, 0x198

    const-string v3, "MSRP_408_TRANSACTION_TIMED_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_408_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 8
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/4 v1, 0x4

    const/16 v2, 0x19d

    const-string v3, "MSRP_413_DO_NOT_SEND_THIS_MESSAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_413_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 9
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/4 v1, 0x5

    const/16 v2, 0x19f

    const-string v3, "MSRP_415_UNKNOWN_CONTENT_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_415_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 10
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/4 v1, 0x6

    const/16 v2, 0x1a7

    const-string v3, "MSRP_423_PARAMETERS_OUT_OF_BOUND"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_423_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 11
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/4 v1, 0x7

    const/16 v2, 0x1e1

    const-string v3, "MSRP_481_SESSION_DOES_NOT_EXIST"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_481_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/16 v1, 0x8

    const/16 v2, 0x1f5

    const-string v3, "MSRP_501_UNKNOWN_METHOD"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_501_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 13
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/16 v1, 0x9

    const/16 v2, 0x1f7

    const-string v3, "MSRP_503_OUT_OF_SERVICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_503_OUT_OF_SERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/16 v1, 0xa

    const/16 v2, 0x1fa

    const-string v3, "MSRP_506_SESSION_ON_OTHER_CONNECTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_506_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 16
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const/16 v1, 0xb

    const/16 v2, 0x3e7

    const-string v3, "MSRP_UNKNOWN_RESPONSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_UNKNOWN_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 3
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 2

    .line 37
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_UNKNOWN_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 39
    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 1

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->id:I

    return p0
.end method
