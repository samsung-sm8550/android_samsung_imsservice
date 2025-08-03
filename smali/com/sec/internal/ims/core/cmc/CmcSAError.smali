.class public Lcom/sec/internal/ims/core/cmc/CmcSAError;
.super Ljava/lang/Object;
.source "CmcSAError.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mReason:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAError;->mReason:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    .line 26
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAError;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAError;->mDescription:Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAError;->getReasonByErrorCode(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAError;->mReason:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string/jumbo p2, "result is null"

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAError;->mDescription:Ljava/lang/String;

    return-void
.end method

.method private getReasonByErrorCode(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;
    .locals 0

    .line 36
    :try_start_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    .line 45
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    return-object p0

    .line 43
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    return-object p0

    .line 40
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->ANOTHER_REQUEST_IS_ONGOING:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    return-object p0

    .line 38
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 48
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    return-object p0
.end method


# virtual methods
.method public isReason(Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;)Z
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAError;->mReason:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAError;->mReason:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAError;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
