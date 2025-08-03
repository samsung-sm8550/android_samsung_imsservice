.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;
.super Landroid/database/ContentObserver;
.source "SoftphoneClient.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/os/Handler;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 236
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 237
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget p1, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountLabelUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSoftphoneLabelObserver onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x3fb

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method
