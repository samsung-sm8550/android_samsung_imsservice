.class Lcom/sec/internal/ims/core/RegistrationManagerBase$2;
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
        "Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;",
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

.field final synthetic val$transport:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 417
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$addresses:Ljava/util/List;

    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$handle:I

    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$intf:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$hostname:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$dnses:Ljava/util/List;

    iput-object p7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$type:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$transport:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$family:Ljava/lang/String;

    iput-wide p10, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$netId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAnswer(Ljava/lang/Object;I)V
    .locals 0

    .line 417
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->onAnswer(Ljava/util/List;I)V

    return-void
.end method

.method public onAnswer(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;",
            ">;I)V"
        }
    .end annotation

    .line 421
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, -0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;

    .line 422
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$addresses:Ljava/util/List;

    iget-object v2, v0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;->mInetAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    iget v0, v0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;->mPort:I

    if-eq p2, v0, :cond_0

    move p2, v0

    goto :goto_0

    .line 426
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$addresses:Ljava/util/List;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$handle:I

    invoke-virtual {p1, v0, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDnsResponse(Ljava/util/List;II)V

    return-void
.end method

.method public onError(Landroid/net/DnsResolver$DnsException;)V
    .locals 10

    .line 430
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v0, p1, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$handle:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$intf:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$hostname:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$dnses:Ljava/util/List;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$type:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$transport:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$family:Ljava/lang/String;

    iget-wide v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;->val$netId:J

    invoke-interface/range {v0 .. v9}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
