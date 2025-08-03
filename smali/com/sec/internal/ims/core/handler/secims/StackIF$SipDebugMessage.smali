.class Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;
.super Ljava/lang/Object;
.source "StackIF.java"


# instance fields
.field private mIsEncrypted:Z

.field private mIsRcsOnly:Z

.field private mIsRx:Z

.field private mMethod:Ljava/lang/String;

.field private mPdnType:I

.field private mPhoneId:I

.field private mSipMessage:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsEncrypted(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsEncrypted:Z

    return p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZ)V
    .locals 0

    .line 3374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3375
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mSipMessage:Ljava/lang/String;

    .line 3376
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mMethod:Ljava/lang/String;

    .line 3377
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mTimestamp:Ljava/lang/String;

    .line 3378
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsRx:Z

    .line 3379
    iput p5, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mPhoneId:I

    .line 3380
    iput p6, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mPdnType:I

    .line 3381
    iput-boolean p7, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsRcsOnly:Z

    const/4 p1, 0x0

    .line 3382
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsEncrypted:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZLcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZZ)V
    .locals 0

    .line 3385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3386
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mSipMessage:Ljava/lang/String;

    .line 3387
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mMethod:Ljava/lang/String;

    .line 3388
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mTimestamp:Ljava/lang/String;

    .line 3389
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsRx:Z

    .line 3390
    iput p5, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mPhoneId:I

    .line 3391
    iput p6, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mPdnType:I

    .line 3392
    iput-boolean p7, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsRcsOnly:Z

    .line 3393
    iput-boolean p8, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsEncrypted:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZZLcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZZ)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 3398
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsRcsOnly:Z

    if-eqz v0, :cond_0

    const-string v1, "[==>] "

    goto :goto_0

    :cond_0
    const-string v1, "[-->] "

    :goto_0
    if-eqz v0, :cond_1

    .line 3399
    const-string v0, "[<==] "

    goto :goto_1

    :cond_1
    const-string v0, "[<--] "

    .line 3400
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   slot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mPdnType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsRx:Z

    if-eqz v3, :cond_2

    move-object v1, v0

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mMethod:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mSipMessage:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
