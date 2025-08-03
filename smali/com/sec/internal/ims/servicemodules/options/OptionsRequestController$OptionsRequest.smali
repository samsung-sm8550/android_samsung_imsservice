.class Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
.super Ljava/lang/Object;
.source "OptionsRequestController.java"


# static fields
.field static final DONE:I = 0x2

.field static final FAILED:I = 0x3

.field static final INIT:I = 0x0

.field static final REQUESTED:I = 0x1


# instance fields
.field private errorResponseCode:I

.field private isIncoming:Z

.field private lastSeen:I

.field private mExtFeature:Ljava/lang/String;

.field private mMyCaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyFeatures:J

.field private mPhoneId:I

.field private mState:I

.field private mTimestamp:Ljava/util/Date;

.field private final mUri:Lcom/sec/ims/util/ImsUri;

.field private reason:Ljava/lang/String;

.field private txId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)V
    .locals 2

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 462
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    const/4 v1, 0x0

    .line 463
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    .line 471
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 472
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    .line 473
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    .line 474
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    .line 475
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    const/4 p1, -0x1

    .line 476
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    .line 477
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 462
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    const/4 v1, 0x0

    .line 463
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    .line 481
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 482
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    .line 483
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    .line 484
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    .line 485
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    const/4 p1, -0x1

    .line 486
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    .line 487
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    .line 488
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyCaps:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/sec/ims/util/ImsUri;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 462
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    const/4 v1, 0x0

    .line 463
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    .line 492
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 493
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    const-wide/16 v2, 0x0

    .line 494
    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    .line 495
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    .line 496
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    const/4 p1, -0x1

    .line 497
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    .line 498
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    .line 499
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyCaps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getErrorResponseCode()I
    .locals 0

    .line 571
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->errorResponseCode:I

    return p0
.end method

.method getExtFeature()Ljava/lang/String;
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    return-object p0
.end method

.method getLastSeen()I
    .locals 0

    .line 551
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    return p0
.end method

.method getMyCaps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 535
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyCaps:Ljava/util/List;

    return-object p0
.end method

.method getMyFeatures()J
    .locals 2

    .line 519
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    return-wide v0
.end method

.method getPhoneId()I
    .locals 0

    .line 515
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    return p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->reason:Ljava/lang/String;

    return-object p0
.end method

.method getState()I
    .locals 0

    .line 507
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    return p0
.end method

.method getTimestamp()Ljava/util/Date;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    return-object p0
.end method

.method getTxId()Ljava/lang/String;
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    return-object p0
.end method

.method getUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method isIncoming()Z
    .locals 0

    .line 527
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    return p0
.end method

.method public setErrorResponseCode(I)V
    .locals 0

    .line 575
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->errorResponseCode:I

    return-void
.end method

.method setExtFeature(Ljava/lang/String;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    return-void
.end method

.method setIncoming(Z)V
    .locals 0

    .line 539
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    return-void
.end method

.method setLastSeen(I)V
    .locals 0

    .line 555
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->reason:Ljava/lang/String;

    return-void
.end method

.method setState(I)V
    .locals 0

    .line 503
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    return-void
.end method

.method setTxId(Ljava/lang/String;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    return-void
.end method
