.class Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;
.super Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.source "SimDataAdaptorSpr.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimDataAdaptorSpr"


# instance fields
.field private mLastMsisdn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;I)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->mLastMsisdn:Ljava/lang/String;

    return-void
.end method

.method private isValidMsisdn(Ljava/lang/String;)Z
    .locals 0

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "000000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public hasValidMsisdn()Z
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasValidMsisdn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Subscription ID :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->mLastMsisdn:Ljava/lang/String;

    .line 30
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->isValidMsisdn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "hasValidMsisdn: HFA isn\'t completed for SPR"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",NEED HFA"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, 0x100000a0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public needHandleLoadedAgain(Ljava/lang/String;)Z
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->needHandleLoadedAgain(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->mLastMsisdn:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->isValidMsisdn(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
