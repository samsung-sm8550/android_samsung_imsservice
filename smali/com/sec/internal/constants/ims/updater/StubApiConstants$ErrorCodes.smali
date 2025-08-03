.class public final enum Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;
.super Ljava/lang/Enum;
.source "StubApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

.field public static final enum INVALID_API_CALL:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

.field public static final enum OVERSEA_CHINESE_SIM_FOREIGN_USER:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

.field public static final enum OVERSEA_CHINESE_SIM_UNACCOUNTED_USER:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

.field public static final enum SERVER_OUT_OF_SERVICE:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

.field public static final enum SERVICE_ERROR:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

.field public static final enum UNRECOGNIZED_OR_NOT_FOUND:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

.field public static final enum UNSUPPORTED_COUNTRY:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

.field public static final enum UNSUPPORTED_DEVICE:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

.field public static final enum WRONG_PARAMETERS:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;


# instance fields
.field private final mCode:I


# direct methods
.method public static synthetic $r8$lambda$_q-CgfQ1h-jtgeM13DRga0eoPlc(ILcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->lambda$of$0(ILcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;)Z

    move-result p0

    return p0
.end method

.method private static synthetic $values()[Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;
    .locals 10

    .line 7
    sget-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->UNKNOWN:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    sget-object v1, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->INVALID_API_CALL:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    sget-object v2, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->UNRECOGNIZED_OR_NOT_FOUND:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    sget-object v3, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->WRONG_PARAMETERS:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    sget-object v4, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->UNSUPPORTED_COUNTRY:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    sget-object v5, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->UNSUPPORTED_DEVICE:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    sget-object v6, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->SERVICE_ERROR:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    sget-object v7, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->OVERSEA_CHINESE_SIM_UNACCOUNTED_USER:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    sget-object v8, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->OVERSEA_CHINESE_SIM_FOREIGN_USER:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    sget-object v9, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->SERVER_OUT_OF_SERVICE:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    filled-new-array/range {v0 .. v9}, [Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    const/4 v1, -0x2

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->UNKNOWN:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    .line 9
    new-instance v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-string v4, "INVALID_API_CALL"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->INVALID_API_CALL:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    .line 10
    new-instance v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    const-string v1, "UNRECOGNIZED_OR_NOT_FOUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->UNRECOGNIZED_OR_NOT_FOUND:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    .line 11
    new-instance v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    const/4 v1, 0x3

    const/16 v2, 0x3e8

    const-string v3, "WRONG_PARAMETERS"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->WRONG_PARAMETERS:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    const/4 v1, 0x4

    const/16 v2, 0x3ea

    const-string v3, "UNSUPPORTED_COUNTRY"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->UNSUPPORTED_COUNTRY:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    .line 13
    new-instance v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    const/4 v1, 0x5

    const/16 v2, 0x3ec

    const-string v3, "UNSUPPORTED_DEVICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->UNSUPPORTED_DEVICE:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    const/4 v1, 0x6

    const/16 v2, 0x7d0

    const-string v3, "SERVICE_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->SERVICE_ERROR:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    .line 15
    new-instance v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    const/4 v1, 0x7

    const/16 v2, 0x7d5

    const-string v3, "OVERSEA_CHINESE_SIM_UNACCOUNTED_USER"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->OVERSEA_CHINESE_SIM_UNACCOUNTED_USER:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    .line 16
    new-instance v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    const/16 v1, 0x8

    const/16 v2, 0x7d6

    const-string v3, "OVERSEA_CHINESE_SIM_FOREIGN_USER"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->OVERSEA_CHINESE_SIM_FOREIGN_USER:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    const/16 v1, 0x9

    const/16 v2, 0x2260

    const-string v3, "SERVER_OUT_OF_SERVICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->SERVER_OUT_OF_SERVICE:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    .line 7
    invoke-static {}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->$values()[Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->$VALUES:[Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->mCode:I

    return-void
.end method

.method private static synthetic lambda$of$0(ILcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;)Z
    .locals 0

    .line 21
    iget p1, p1, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->mCode:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static of(I)Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;
    .locals 2

    .line 20
    invoke-static {}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->values()[Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 21
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->UNKNOWN:Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    .line 23
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;
    .locals 1

    .line 7
    const-class v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;
    .locals 1

    .line 7
    sget-object v0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->$VALUES:[Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->mCode:I

    return p0
.end method
