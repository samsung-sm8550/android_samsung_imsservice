.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "SimSwapFlow.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISimSwapFlow;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimSwapFlow"


# instance fields
.field private mSimSwapCompletedListener:Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    return-void
.end method


# virtual methods
.method public handleSimSwap(Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;)V
    .locals 2

    .line 42
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;->mSimSwapCompletedListener:Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;

    .line 43
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handleSimSwap...."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, v1, p1, v0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    return-void
.end method

.method protected notifyNSDSFlowResponse(ZLjava/lang/String;II)V
    .locals 3

    .line 50
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyNSDSFlowResponse: success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    .line 54
    invoke-static {p2, p3, p4}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->translate(Ljava/lang/String;II)I

    move-result p2

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.samsung.nsds.action.SIM_SWAP_COMPLETED"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    const-string/jumbo p3, "request_status"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    const-string p1, "error_codes"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 61
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p1, p2, p3}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;->mSimSwapCompletedListener:Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;

    if-eqz p0, :cond_1

    .line 64
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;->onSimSwapCompleted()V

    :cond_1
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method
