.class Lcom/sec/internal/ims/core/RegistrationManagerBase$1;
.super Ljava/lang/Object;
.source "RegistrationManagerBase.java"

# interfaces
.implements Landroid/net/DnsResolver$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/DnsResolver$Callback<",
        "Ljava/util/List<",
        "Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field final synthetic val$addresses:Ljava/util/List;

.field final synthetic val$dnses:Ljava/util/List;

.field final synthetic val$family:Ljava/lang/String;

.field final synthetic val$handle:I

.field final synthetic val$hostname:Ljava/lang/String;

.field final synthetic val$intf:Ljava/lang/String;

.field final synthetic val$netId:J

.field final synthetic val$task:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

.field final synthetic val$transport:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 396
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$task:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$intf:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$dnses:Ljava/util/List;

    iput-object p5, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$transport:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$family:Ljava/lang/String;

    iput-wide p7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$netId:J

    iput-object p9, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$addresses:Ljava/util/List;

    iput p10, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$handle:I

    iput-object p11, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$hostname:Ljava/lang/String;

    iput-object p12, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAnswer(Ljava/lang/Object;I)V
    .locals 0

    .line 396
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->onAnswer(Ljava/util/List;I)V

    return-void
.end method

.method public onAnswer(Ljava/util/List;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;",
            ">;I)V"
        }
    .end annotation

    .line 400
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DnsResponse: NaptrTargets size : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RegiMgr"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;

    .line 402
    iget v1, v0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 404
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$task:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$intf:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;->mName:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$dnses:Ljava/util/List;

    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$transport:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$family:Ljava/lang/String;

    iget-wide v11, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$netId:J

    const-string v8, "SRV"

    invoke-virtual/range {v3 .. v12}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move p2, v2

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 408
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$addresses:Ljava/util/List;

    const/4 v0, -0x1

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$handle:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDnsResponse(Ljava/util/List;II)V

    :cond_2
    return-void
.end method

.method public onError(Landroid/net/DnsResolver$DnsException;)V
    .locals 10

    .line 413
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v0, p1, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$handle:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$intf:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$hostname:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$dnses:Ljava/util/List;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$type:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$transport:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$family:Ljava/lang/String;

    iget-wide v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;->val$netId:J

    invoke-interface/range {v0 .. v9}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
