.class public final enum Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;
.super Ljava/lang/Enum;
.source "SipErrorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

.field public static final enum ERROR_4XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

.field public static final enum ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

.field public static final enum ERROR_6XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

.field public static final enum SUCCESS:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;


# instance fields
.field private mType:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;
    .locals 4

    .line 133
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->SUCCESS:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_4XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_6XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 134
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->SUCCESS:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 135
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-string v4, "ERROR_4XX"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_4XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 136
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    const-string v1, "ERROR_5XX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 137
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    const/4 v1, 0x3

    const/4 v2, 0x6

    const-string v3, "ERROR_6XX"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_6XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 133
    invoke-static {}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->$values()[Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->$VALUES:[Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput p3, p0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;
    .locals 1

    .line 133
    const-class v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;
    .locals 1

    .line 133
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->$VALUES:[Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 0

    .line 150
    iget p0, p0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->mType:I

    div-int/lit8 p1, p1, 0x64

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Lcom/sec/ims/util/SipError;)Z
    .locals 0

    .line 146
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(I)Z

    move-result p0

    return p0
.end method
